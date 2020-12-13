# Nutrahome DB

1. Export PostgreSQL database
    
    - Open terminal as admin, then execute these lines

        ```bash
        $ cd C:\Program Files\PostgreSQL\10\bin
        
        $ pg_dump -U <username> nutrahome > nutrahome.pgsql
        ```

2. Import PostgreSQL database
    
    - Open terminal as admin, then execute these lines

        ```bash
        $ cd C:\Program Files\PostgreSQL\10\bin
        
        $ psql -U <username> nutrahome < nutrahome.pgsql
        ```