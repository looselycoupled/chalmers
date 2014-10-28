class InitialModels < ActiveRecord::Migration
  def change

    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :queue
      t.timestamps null: false
    end

    create_table :features do |t|
      t.string :name
      t.string :puppet_include
      t.timestamps null: false
    end

    create_table :strategies do |t|
      t.string :code
      t.integer :number_of_servers
      t.timestamps null: false
    end

    create_table :assets do |t|
      t.timestamps null: false
    end

    create_table :assignments do |t|
      t.timestamps null: false
    end



    create_table :servers do |t|
      t.string :ami
      t.string :instance_id
      t.string :hostname
      t.string :public_ip_address
      t.string :private_ip_address
      t.string :private_dns_name
      t.string :region
      t.string :size
      t.boolean :ready

      t.timestamps null: false
    end






    # references

    add_reference :servers, :asset, index: true
    add_reference :assets, :project, index: true
    add_reference :assets, :strategy, index: true
    add_reference :assignments, :asset, index: true
    add_reference :assignments, :feature, index: true


  end
end
