{application,sequence,
             [{registered,[]},
              {description,"sequence"},
              {vsn,"0.1.0"},
              {modules,['Elixir.Sequence','Elixir.Sequence.Server',
                        'Elixir.Sequence.Stash',
                        'Elixir.Sequence.SubSupervisor',
                        'Elixir.Sequence.Supervisor']},
              {applications,[kernel,stdlib,elixir,logger]},
              {mod,{'Elixir.Sequence',[]}},
              {env,[{initial_number,456}]},
              {registerd,['Elixir.Sequence.Server']}]}.