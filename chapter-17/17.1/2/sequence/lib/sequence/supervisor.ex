defmodule Sequence.Supervisor do
  use Supervisor

  def start_link(initial_number) do
    result = {:ok, sup } = Supervisor.start_link(__MODULE__, [initial_number])
    start_workers(sup, initial_number)
    result
  end

  def start_workers(sup, initial_number) do
    # スタッシュワーカーを開始
    { :ok, stash } = Supervisor.start_child(sup, worker(Sequence.Stash, [initial_number]))
    # 実際の sequence サーバのスーパーバイザーを開始
    Supervisor.start_child(sup, supervisor(Sequence.SubSupervisor, [stash]))
  end

  # Supervisor.start_link の callback
  def init(_) do
    # 空のリストを渡しているので、スーパーバイザは起動するが、子供は居ない
    supervise [], strategy: :one_for_one
  end
end
