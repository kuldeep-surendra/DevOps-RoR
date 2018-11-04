set :stage, :production
set :branch, :master
set :deploy_to, '/home/deploy/apps/DevOps-RoR'
set :log_level, :debug

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server
# definition into the server list. The second argument
# something that quacks like a hash can be used to set
# extended properties on the server.
role :app, %w{deploy@13.232.27.198}
role :web, %w{deploy@13.232.27.198}
role :db, %w{deploy@13.232.27.198}
server '13.232.27.198', roles: %w{:web, :app, :db}, user: 'deploy'

set :ssh_options, {
   forward_agent: true,
   keys: %w(~/.ssh/id_rsa),
   auth_methods: %w(publickey)
 }