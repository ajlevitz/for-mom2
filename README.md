rails generate model Response submitter:string comments:text response_id:integer prompt:references user:references

rails generate model Prompt question:text school:references prompt_id:integer 