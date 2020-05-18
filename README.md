<img src="/src/image/healthtrack_logo.png" height="150" width="150">

<h1><img src="/src/image/database.png" height="20" width="20"> Database - Health Track </h1>

Banco de dados da solução Health Track desenvolvida durante o curso de Análise e desenvolvimento de sistemas na *FIAP*.

<h2>SGBD</h2>
<li>Oracle Data Modeler</li>
<li>Oracle Data Developer</li>

<h2>Modelo lógico</h2>

<img src="/src/image/Logical.png">

<h2>Modelo físico</h2>

<img src="/src/image/Relational.png">

<h2>Script de criação</h2>

<blockquote>
  <p>
CREATE TABLE t_ativ (
    cd_ativ                     INTEGER NOT NULL,
    t_cadastro_cd_usuario       INTEGER NOT NULL,
    t_lista_ativ_cd_lista_ativ  INTEGER NOT NULL,
    nm_duracao                  NUMBER(10, 2) NOT NULL
);

CREATE UNIQUE INDEX t_ativ__idx ON
    t_ativ (
        t_lista_ativ_cd_lista_ativ
    ASC );

ALTER TABLE t_ativ ADD CONSTRAINT t_ativ_pk PRIMARY KEY ( cd_ativ );

CREATE TABLE t_cadastro (
    cd_usuario     INTEGER NOT NULL,
    nm_usuario     VARCHAR2(50) NOT NULL,
    ds_email       VARCHAR2(50) NOT NULL,
    dt_nascimento  DATE NOT NULL,
    dt_cadastro    DATE NOT NULL,
    ds_link_foto   VARCHAR2(50),
    ds_premium     RAW(2000) NOT NULL
);

ALTER TABLE t_cadastro ADD CONSTRAINT t_cadastro_pk PRIMARY KEY ( cd_usuario );
  </p>
</blockquote>

Script completo: 👉 <a href="/src/script_createdb.sql">Create database</a>