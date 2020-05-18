-- Gerado por Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   em:        2020-05-18 00:00:55 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE t_alimento (
    cd_alimento  NUMBER(10) NOT NULL,
    ds_alimento  VARCHAR2(30) NOT NULL,
    nm_calorias  NUMBER(10, 3) NOT NULL,
    cd_tipo_ref  NUMBER NOT NULL
);

ALTER TABLE t_alimento ADD CONSTRAINT t_alimento_pk PRIMARY KEY ( cd_alimento );

CREATE TABLE t_altura (
    cd_altura              NUMBER(10) NOT NULL,
    t_cadastro_cd_usuario  CHAR(10) NOT NULL,
    vl_altura              NUMBER(10, 2) NOT NULL,
    dt_atualizacao         DATE NOT NULL
);

ALTER TABLE t_altura ADD CONSTRAINT t_altura_pk PRIMARY KEY ( cd_altura );

CREATE TABLE t_ativ (
    cd_ativ                     CHAR(10) NOT NULL,
    t_cadastro_cd_usuario       CHAR(10) NOT NULL,
    t_lista_ativ_cd_lista_ativ  CHAR(10) NOT NULL,
    nm_duracao                  NUMBER(10, 2) NOT NULL
);

CREATE UNIQUE INDEX t_ativ__idx ON
    t_ativ (
        t_lista_ativ_cd_lista_ativ
    ASC );

ALTER TABLE t_ativ ADD CONSTRAINT t_ativ_pk PRIMARY KEY ( cd_ativ );

CREATE TABLE t_cadastro (
    cd_usuario     CHAR(10) NOT NULL,
    nm_usuario     VARCHAR2(50) NOT NULL,
    ds_email       VARCHAR2(50) NOT NULL,
    dt_nascimento  DATE NOT NULL,
    dt_cadastro    DATE NOT NULL,
    ds_link_foto   VARCHAR2(50)
);

ALTER TABLE t_cadastro ADD CONSTRAINT t_cadastro_pk PRIMARY KEY ( cd_usuario );

CREATE TABLE t_cep (
    cd_endereco                 CHAR(10) NOT NULL,
    t_logradouro_cd_logradouro  CHAR(10) NOT NULL,
    ds_cep                      CHAR(10) NOT NULL,
    ds_bairro                   VARCHAR2(20) NOT NULL,
    ds_cidade                   VARCHAR2(30) NOT NULL,
    ds_uf                       CHAR(2) NOT NULL
);

CREATE UNIQUE INDEX t_cep__idx ON
    t_cep (
        t_logradouro_cd_logradouro
    ASC );

ALTER TABLE t_cep ADD CONSTRAINT t_cep_pk PRIMARY KEY ( cd_endereco );

CREATE TABLE t_compra (
    t_pedido_cd_pedido     CHAR(10) NOT NULL,
    t_cadastro_cd_usuario  CHAR(10) NOT NULL,
    cd_premium             CHAR(10) NOT NULL,
    dt_inicio              DATE NOT NULL,
    dt_fim                 DATE NOT NULL
);

ALTER TABLE t_compra ADD CONSTRAINT t_compra_pk PRIMARY KEY ( t_pedido_cd_pedido );

CREATE TABLE t_desconto (
    cd_cupom     CHAR(10) NOT NULL,
    ds_cupom     VARCHAR2(30) NOT NULL,
    vl_desconto  NUMBER(10, 2) NOT NULL,
    ds_status    BLOB NOT NULL
);

ALTER TABLE t_desconto ADD CONSTRAINT t_desconto_pk PRIMARY KEY ( cd_cupom );

CREATE TABLE t_efisico (
    cd_efisico              CHAR(10) NOT NULL,
    t_lista_ef_cd_lista_ef  CHAR(10) NOT NULL,
    t_cadastro_cd_usuario   CHAR(10) NOT NULL,
    dt_atualizacao          DATE NOT NULL
);

CREATE UNIQUE INDEX t_efisico__idx ON
    t_efisico (
        t_lista_ef_cd_lista_ef
    ASC );

ALTER TABLE t_efisico ADD CONSTRAINT t_efisico_pk PRIMARY KEY ( cd_efisico );

CREATE TABLE t_emocional (
    cd_emocional              CHAR(10) NOT NULL,
    t_lista_emo_cd_lista_emo  CHAR(10) NOT NULL,
    t_cadastro_cd_usuario     CHAR(10) NOT NULL,
    dt_atualizacao            DATE NOT NULL
);

CREATE UNIQUE INDEX t_emocional__idx ON
    t_emocional (
        t_lista_emo_cd_lista_emo
    ASC );

ALTER TABLE t_emocional ADD CONSTRAINT t_emocional_pk PRIMARY KEY ( cd_emocional );

CREATE TABLE t_endereco (
    t_cep_cd_endereco      CHAR(10) NOT NULL,
    t_cadastro_cd_usuario  CHAR(10) NOT NULL,
    ds_numero              CHAR(10) NOT NULL,
    ds_complemento         VARCHAR2(30)
);

ALTER TABLE t_endereco ADD CONSTRAINT t_endereco_pk PRIMARY KEY ( t_cep_cd_endereco );

CREATE TABLE t_h_dormidas (
    cd_hdormidas                CHAR(10) NOT NULL,
    t_lista_hdor_cd_lista_hdor  CHAR(10) NOT NULL,
    t_cadastro_cd_usuario       CHAR(10) NOT NULL,
    dt_atualizacao              DATE NOT NULL
);

CREATE UNIQUE INDEX t_h_dormidas__idx ON
    t_h_dormidas (
        t_lista_hdor_cd_lista_hdor
    ASC );

ALTER TABLE t_h_dormidas ADD CONSTRAINT t_h_dormidas_pk PRIMARY KEY ( cd_hdormidas );

CREATE TABLE t_imc (
    cd_imc                  NUMBER(10) NOT NULL,
    t_cadastro_cd_usuario   CHAR(10) NOT NULL,
    t_tipo_imc_cd_tipo_imc  NUMBER(10) NOT NULL,
    dt_atualizacao          DATE NOT NULL
);

CREATE UNIQUE INDEX t_imc__idx ON
    t_imc (
        t_tipo_imc_cd_tipo_imc
    ASC );

ALTER TABLE t_imc ADD CONSTRAINT t_imc_pk PRIMARY KEY ( cd_imc );

CREATE TABLE t_lista_ativ (
    cd_lista_ativ  CHAR(10) NOT NULL,
    ds_lista_ativ  VARCHAR2(30) NOT NULL,
    vl_gasto_cal   NUMBER(10, 2) NOT NULL
);

ALTER TABLE t_lista_ativ ADD CONSTRAINT t_lista_ativ_pk PRIMARY KEY ( cd_lista_ativ );

CREATE TABLE t_lista_ef (
    cd_lista_ef  CHAR(10) NOT NULL,
    ds_lista_ef  VARCHAR2(30) NOT NULL
);

ALTER TABLE t_lista_ef ADD CONSTRAINT t_lista_ef_pk PRIMARY KEY ( cd_lista_ef );

CREATE TABLE t_lista_emo (
    cd_lista_emo  CHAR(10) NOT NULL,
    ds_lista_emo  VARCHAR2(30) NOT NULL
);

ALTER TABLE t_lista_emo ADD CONSTRAINT t_lista_emo_pk PRIMARY KEY ( cd_lista_emo );

CREATE TABLE t_lista_hdor (
    cd_lista_hdor  CHAR(10) NOT NULL,
    ds_lista_hdor  VARCHAR2(30) NOT NULL
);

ALTER TABLE t_lista_hdor ADD CONSTRAINT t_lista_hdor_pk PRIMARY KEY ( cd_lista_hdor );

CREATE TABLE t_login (
    t_cadastro_cd_usuario  CHAR(10) NOT NULL,
    ds_senha               VARCHAR2(20) NOT NULL
);

ALTER TABLE t_login ADD CONSTRAINT t_login_pk PRIMARY KEY ( t_cadastro_cd_usuario );

CREATE TABLE t_logradouro (
    cd_logradouro  CHAR(10) NOT NULL,
    ds_logradouro  VARCHAR2(20) NOT NULL
);

ALTER TABLE t_logradouro ADD CONSTRAINT t_logradouro_pk PRIMARY KEY ( cd_logradouro );

CREATE TABLE t_nivel_ativ (
    cd_nivel_ativ          NUMBER(10) NOT NULL,
    t_cadastro_cd_usuario  CHAR(10) NOT NULL,
    t_tipo_nivel_cd_nivel  NUMBER(10) NOT NULL,
    dt_atualizacao         DATE NOT NULL
);

CREATE UNIQUE INDEX t_nivel_ativ__idx ON
    t_nivel_ativ (
        t_tipo_nivel_cd_nivel
    ASC );

ALTER TABLE t_nivel_ativ ADD CONSTRAINT t_nivel_ativ_pk PRIMARY KEY ( cd_nivel_ativ );

CREATE TABLE t_pedido (
    cd_pedido             CHAR(10) NOT NULL,
    vl_total              NUMBER(10, 2) NOT NULL,
    t_premium_cd_premium  CHAR(10) NOT NULL,
    t_desconto_cd_cupom   CHAR(10),
    vl_total_pedido       NUMBER(10, 2) NOT NULL
);

CREATE UNIQUE INDEX t_pedido__idx ON
    t_pedido (
        t_desconto_cd_cupom
    ASC );

CREATE UNIQUE INDEX t_pedido__idxv1 ON
    t_pedido (
        t_premium_cd_premium
    ASC );

ALTER TABLE t_pedido ADD CONSTRAINT t_pedido_pk PRIMARY KEY ( cd_pedido );

CREATE TABLE t_periodo (
    cd_periodo  CHAR(10) NOT NULL,
    ds_periodo  VARCHAR2(10) NOT NULL
);

ALTER TABLE t_periodo ADD CONSTRAINT t_periodo_pk PRIMARY KEY ( cd_periodo );

CREATE TABLE t_peso (
    cd_peso                NUMBER(10) NOT NULL,
    t_cadastro_cd_usuario  CHAR(10) NOT NULL,
    vl_peso                NUMBER(10, 2) NOT NULL,
    dt_atualizacao         DATE NOT NULL
);

ALTER TABLE t_peso ADD CONSTRAINT t_peso_pk PRIMARY KEY ( cd_peso );

CREATE TABLE t_plano (
    cd_plano  CHAR(10) NOT NULL,
    ds_plano  VARCHAR2(30) NOT NULL
);

ALTER TABLE t_plano ADD CONSTRAINT t_plano_pk PRIMARY KEY ( cd_plano );

CREATE TABLE t_premium (
    cd_premium            CHAR(10) NOT NULL,
    t_plano_cd_plano      CHAR(10) NOT NULL,
    t_periodo_cd_periodo  CHAR(10) NOT NULL,
    vl_preco              NUMBER(10, 2) NOT NULL
);

CREATE UNIQUE INDEX t_premium__idx ON
    t_premium (
        t_plano_cd_plano
    ASC );

CREATE UNIQUE INDEX t_premium__idxv1 ON
    t_premium (
        t_periodo_cd_periodo
    ASC );

ALTER TABLE t_premium ADD CONSTRAINT t_premium_pk PRIMARY KEY ( cd_premium );

CREATE TABLE t_refeicao (
    t_tipo_refeicao_cd_tipo_ref  NUMBER(10) NOT NULL,
    t_alimento_cd_alimento       NUMBER(10) NOT NULL,
    t_cadastro_cd_usuario        CHAR(10) NOT NULL,
    nm_qtdade                    NUMBER(10, 3) NOT NULL
);

CREATE UNIQUE INDEX t_refeicao__idx ON
    t_refeicao (
        t_alimento_cd_alimento
    ASC );

CREATE UNIQUE INDEX t_refeicao__idxv1 ON
    t_refeicao (
        t_tipo_refeicao_cd_tipo_ref
    ASC );

ALTER TABLE t_refeicao ADD CONSTRAINT t_refeicao_pk PRIMARY KEY ( t_tipo_refeicao_cd_tipo_ref,
                                                                  t_alimento_cd_alimento );

CREATE TABLE t_tipo_imc (
    cd_tipo_imc      NUMBER(10) NOT NULL,
    vl_inicio_faixa  NUMBER(10, 2) NOT NULL,
    vl_fim_faixa     NUMBER(10, 2) NOT NULL,
    ds_tipo_imc      VARCHAR2(30) NOT NULL
);

ALTER TABLE t_tipo_imc ADD CONSTRAINT t_tipo_imc_pk PRIMARY KEY ( cd_tipo_imc );

CREATE TABLE t_tipo_nivel (
    cd_nivel  NUMBER(10) NOT NULL,
    ds_nivel  VARCHAR2(30) NOT NULL
);

ALTER TABLE t_tipo_nivel ADD CONSTRAINT t_tipo_nivel_pk PRIMARY KEY ( cd_nivel );

CREATE TABLE t_tipo_refeicao (
    cd_tipo_ref  NUMBER(10) NOT NULL,
    ds_tipo_ref  NUMBER(10) NOT NULL
);

ALTER TABLE t_tipo_refeicao ADD CONSTRAINT t_tipo_refeicao_pk PRIMARY KEY ( cd_tipo_ref );

ALTER TABLE t_altura
    ADD CONSTRAINT t_altura_t_cadastro_fk FOREIGN KEY ( t_cadastro_cd_usuario )
        REFERENCES t_cadastro ( cd_usuario );

ALTER TABLE t_ativ
    ADD CONSTRAINT t_ativ_t_cadastro_fk FOREIGN KEY ( t_cadastro_cd_usuario )
        REFERENCES t_cadastro ( cd_usuario );

ALTER TABLE t_ativ
    ADD CONSTRAINT t_ativ_t_lista_ativ_fk FOREIGN KEY ( t_lista_ativ_cd_lista_ativ )
        REFERENCES t_lista_ativ ( cd_lista_ativ );

ALTER TABLE t_cep
    ADD CONSTRAINT t_cep_t_logradouro_fk FOREIGN KEY ( t_logradouro_cd_logradouro )
        REFERENCES t_logradouro ( cd_logradouro );

ALTER TABLE t_compra
    ADD CONSTRAINT t_compra_t_cadastro_fk FOREIGN KEY ( t_cadastro_cd_usuario )
        REFERENCES t_cadastro ( cd_usuario );

ALTER TABLE t_compra
    ADD CONSTRAINT t_compra_t_pedido_fk FOREIGN KEY ( t_pedido_cd_pedido )
        REFERENCES t_pedido ( cd_pedido );

ALTER TABLE t_efisico
    ADD CONSTRAINT t_efisico_t_cadastro_fk FOREIGN KEY ( t_cadastro_cd_usuario )
        REFERENCES t_cadastro ( cd_usuario );

ALTER TABLE t_efisico
    ADD CONSTRAINT t_efisico_t_lista_ef_fk FOREIGN KEY ( t_lista_ef_cd_lista_ef )
        REFERENCES t_lista_ef ( cd_lista_ef );

ALTER TABLE t_emocional
    ADD CONSTRAINT t_emocional_t_cadastro_fk FOREIGN KEY ( t_cadastro_cd_usuario )
        REFERENCES t_cadastro ( cd_usuario );

ALTER TABLE t_emocional
    ADD CONSTRAINT t_emocional_t_lista_emo_fk FOREIGN KEY ( t_lista_emo_cd_lista_emo )
        REFERENCES t_lista_emo ( cd_lista_emo );

ALTER TABLE t_endereco
    ADD CONSTRAINT t_endereco_t_cadastro_fk FOREIGN KEY ( t_cadastro_cd_usuario )
        REFERENCES t_cadastro ( cd_usuario );

ALTER TABLE t_endereco
    ADD CONSTRAINT t_endereco_t_cep_fk FOREIGN KEY ( t_cep_cd_endereco )
        REFERENCES t_cep ( cd_endereco );

ALTER TABLE t_h_dormidas
    ADD CONSTRAINT t_h_dormidas_t_cadastro_fk FOREIGN KEY ( t_cadastro_cd_usuario )
        REFERENCES t_cadastro ( cd_usuario );

ALTER TABLE t_h_dormidas
    ADD CONSTRAINT t_h_dormidas_t_lista_hdor_fk FOREIGN KEY ( t_lista_hdor_cd_lista_hdor )
        REFERENCES t_lista_hdor ( cd_lista_hdor );

ALTER TABLE t_imc
    ADD CONSTRAINT t_imc_t_cadastro_fk FOREIGN KEY ( t_cadastro_cd_usuario )
        REFERENCES t_cadastro ( cd_usuario );

ALTER TABLE t_imc
    ADD CONSTRAINT t_imc_t_tipo_imc_fk FOREIGN KEY ( t_tipo_imc_cd_tipo_imc )
        REFERENCES t_tipo_imc ( cd_tipo_imc );

ALTER TABLE t_login
    ADD CONSTRAINT t_login_t_cadastro_fk FOREIGN KEY ( t_cadastro_cd_usuario )
        REFERENCES t_cadastro ( cd_usuario );

ALTER TABLE t_nivel_ativ
    ADD CONSTRAINT t_nivel_ativ_t_cadastro_fk FOREIGN KEY ( t_cadastro_cd_usuario )
        REFERENCES t_cadastro ( cd_usuario );

ALTER TABLE t_nivel_ativ
    ADD CONSTRAINT t_nivel_ativ_t_tipo_nivel_fk FOREIGN KEY ( t_tipo_nivel_cd_nivel )
        REFERENCES t_tipo_nivel ( cd_nivel );

ALTER TABLE t_pedido
    ADD CONSTRAINT t_pedido_t_desconto_fk FOREIGN KEY ( t_desconto_cd_cupom )
        REFERENCES t_desconto ( cd_cupom );

ALTER TABLE t_pedido
    ADD CONSTRAINT t_pedido_t_premium_fk FOREIGN KEY ( t_premium_cd_premium )
        REFERENCES t_premium ( cd_premium );

ALTER TABLE t_peso
    ADD CONSTRAINT t_peso_t_cadastro_fk FOREIGN KEY ( t_cadastro_cd_usuario )
        REFERENCES t_cadastro ( cd_usuario );

ALTER TABLE t_premium
    ADD CONSTRAINT t_premium_t_periodo_fk FOREIGN KEY ( t_periodo_cd_periodo )
        REFERENCES t_periodo ( cd_periodo );

ALTER TABLE t_premium
    ADD CONSTRAINT t_premium_t_plano_fk FOREIGN KEY ( t_plano_cd_plano )
        REFERENCES t_plano ( cd_plano );

ALTER TABLE t_refeicao
    ADD CONSTRAINT t_refeicao_t_alimento_fk FOREIGN KEY ( t_alimento_cd_alimento )
        REFERENCES t_alimento ( cd_alimento );

ALTER TABLE t_refeicao
    ADD CONSTRAINT t_refeicao_t_cadastro_fk FOREIGN KEY ( t_cadastro_cd_usuario )
        REFERENCES t_cadastro ( cd_usuario );

ALTER TABLE t_refeicao
    ADD CONSTRAINT t_refeicao_t_tipo_refeicao_fk FOREIGN KEY ( t_tipo_refeicao_cd_tipo_ref )
        REFERENCES t_tipo_refeicao ( cd_tipo_ref );



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            28
-- CREATE INDEX                            13
-- ALTER TABLE                             55
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
