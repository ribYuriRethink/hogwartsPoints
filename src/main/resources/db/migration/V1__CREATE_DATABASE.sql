CREATE TABLE house (
    id          SERIAL            ,
    name        VARCHAR(255)      NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE "user" (
    id          SERIAL           ,
    cpf         VARCHAR(11)      NOT NULL,
    name        VARCHAR(255)     NOT NULL,
    house_id    INTEGER          ,
    password    VARCHAR(255)     NOT NULL,
    lastLogin   TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (house_id) references house (id)
);

CREATE TABLE campaign (
    id                  SERIAL              ,
    id_campaign         VARCHAR(255)        ,
    parity              FLOAT               NOT NULL,
    partner_parity      FLOAT               NOT NULL,
    start_date          TIMESTAMP                NOT NULL,
    end_date            TIMESTAMP                NOT NULL,
    description         VARCHAR(255)
);