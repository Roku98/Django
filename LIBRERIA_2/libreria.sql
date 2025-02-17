PGDMP          %        	    	    z           libreria    14.5    14.5 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    libreria    DATABASE     d   CREATE DATABASE libreria WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Chile.1252';
    DROP DATABASE libreria;
                postgres    false            �            1259    16551    Libros_autor    TABLE     k   CREATE TABLE public."Libros_autor" (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);
 "   DROP TABLE public."Libros_autor";
       public         heap    postgres    false            �            1259    16550    Libros_autor_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Libros_autor_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Libros_autor_id_seq";
       public          postgres    false    229            �           0    0    Libros_autor_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Libros_autor_id_seq" OWNED BY public."Libros_autor".id;
          public          postgres    false    228            �            1259    16620    Libros_carrito    TABLE     �   CREATE TABLE public."Libros_carrito" (
    id integer NOT NULL,
    cantidad integer NOT NULL,
    libro_id integer NOT NULL
);
 $   DROP TABLE public."Libros_carrito";
       public         heap    postgres    false            �            1259    16619    Libros_carrito_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Libros_carrito_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Libros_carrito_id_seq";
       public          postgres    false    239            �           0    0    Libros_carrito_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public."Libros_carrito_id_seq" OWNED BY public."Libros_carrito".id;
          public          postgres    false    238            �            1259    16587    Libros_categoria    TABLE     o   CREATE TABLE public."Libros_categoria" (
    id integer NOT NULL,
    nombre character varying(30) NOT NULL
);
 &   DROP TABLE public."Libros_categoria";
       public         heap    postgres    false            �            1259    16586    Libros_categoria_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Libros_categoria_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."Libros_categoria_id_seq";
       public          postgres    false    235            �           0    0    Libros_categoria_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."Libros_categoria_id_seq" OWNED BY public."Libros_categoria".id;
          public          postgres    false    234            �            1259    16558    Libros_libro    TABLE     �   CREATE TABLE public."Libros_libro" (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL,
    portada character varying(100),
    descripcion text,
    precio integer NOT NULL,
    autor_id integer NOT NULL
);
 "   DROP TABLE public."Libros_libro";
       public         heap    postgres    false            �            1259    16594    Libros_libro_categoria    TABLE     �   CREATE TABLE public."Libros_libro_categoria" (
    id integer NOT NULL,
    libro_id integer NOT NULL,
    categoria_id integer NOT NULL
);
 ,   DROP TABLE public."Libros_libro_categoria";
       public         heap    postgres    false            �            1259    16593    Libros_libro_categoria_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Libros_libro_categoria_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."Libros_libro_categoria_id_seq";
       public          postgres    false    237            �           0    0    Libros_libro_categoria_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public."Libros_libro_categoria_id_seq" OWNED BY public."Libros_libro_categoria".id;
          public          postgres    false    236            �            1259    16557    Libros_libro_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Libros_libro_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Libros_libro_id_seq";
       public          postgres    false    231            �           0    0    Libros_libro_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Libros_libro_id_seq" OWNED BY public."Libros_libro".id;
          public          postgres    false    230            �            1259    16567    Libros_stock    TABLE     �   CREATE TABLE public."Libros_stock" (
    id integer NOT NULL,
    sucursal character varying(50) NOT NULL,
    numero_unidades integer NOT NULL,
    libro_id integer NOT NULL
);
 "   DROP TABLE public."Libros_stock";
       public         heap    postgres    false            �            1259    16566    Libros_stock_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Libros_stock_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Libros_stock_id_seq";
       public          postgres    false    233            �           0    0    Libros_stock_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Libros_stock_id_seq" OWNED BY public."Libros_stock".id;
          public          postgres    false    232            �            1259    16421 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16420    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    216            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    215            �            1259    16430    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16429    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    218            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    217            �            1259    16414    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16413    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    214            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    213            �            1259    16437 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    16446    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16445    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    222            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    221            �            1259    16436    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    220            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    219            �            1259    16453    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16452 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    224            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    223            �            1259    16512    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    16511    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    226            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    225            �            1259    16405    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16404    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    212            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    211            �            1259    16396    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16395    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    210            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    209            �            1259    16541    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �           2604    16554    Libros_autor id    DEFAULT     v   ALTER TABLE ONLY public."Libros_autor" ALTER COLUMN id SET DEFAULT nextval('public."Libros_autor_id_seq"'::regclass);
 @   ALTER TABLE public."Libros_autor" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    16623    Libros_carrito id    DEFAULT     z   ALTER TABLE ONLY public."Libros_carrito" ALTER COLUMN id SET DEFAULT nextval('public."Libros_carrito_id_seq"'::regclass);
 B   ALTER TABLE public."Libros_carrito" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239            �           2604    16590    Libros_categoria id    DEFAULT     ~   ALTER TABLE ONLY public."Libros_categoria" ALTER COLUMN id SET DEFAULT nextval('public."Libros_categoria_id_seq"'::regclass);
 D   ALTER TABLE public."Libros_categoria" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235            �           2604    16561    Libros_libro id    DEFAULT     v   ALTER TABLE ONLY public."Libros_libro" ALTER COLUMN id SET DEFAULT nextval('public."Libros_libro_id_seq"'::regclass);
 @   ALTER TABLE public."Libros_libro" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    16597    Libros_libro_categoria id    DEFAULT     �   ALTER TABLE ONLY public."Libros_libro_categoria" ALTER COLUMN id SET DEFAULT nextval('public."Libros_libro_categoria_id_seq"'::regclass);
 J   ALTER TABLE public."Libros_libro_categoria" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            �           2604    16570    Libros_stock id    DEFAULT     v   ALTER TABLE ONLY public."Libros_stock" ALTER COLUMN id SET DEFAULT nextval('public."Libros_stock_id_seq"'::regclass);
 @   ALTER TABLE public."Libros_stock" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            �           2604    16424    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    16433    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    16417    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            �           2604    16440    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    16449    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    16456    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    16515    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    16408    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            �           2604    16399    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210            �          0    16551    Libros_autor 
   TABLE DATA           4   COPY public."Libros_autor" (id, nombre) FROM stdin;
    public          postgres    false    229   ��       �          0    16620    Libros_carrito 
   TABLE DATA           B   COPY public."Libros_carrito" (id, cantidad, libro_id) FROM stdin;
    public          postgres    false    239   �       �          0    16587    Libros_categoria 
   TABLE DATA           8   COPY public."Libros_categoria" (id, nombre) FROM stdin;
    public          postgres    false    235   -�       �          0    16558    Libros_libro 
   TABLE DATA           \   COPY public."Libros_libro" (id, nombre, portada, descripcion, precio, autor_id) FROM stdin;
    public          postgres    false    231   ��       �          0    16594    Libros_libro_categoria 
   TABLE DATA           N   COPY public."Libros_libro_categoria" (id, libro_id, categoria_id) FROM stdin;
    public          postgres    false    237   ��       �          0    16567    Libros_stock 
   TABLE DATA           Q   COPY public."Libros_stock" (id, sucursal, numero_unidades, libro_id) FROM stdin;
    public          postgres    false    233   4�       �          0    16421 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    216   �       �          0    16430    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    218   <�       �          0    16414    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    214   Y�       �          0    16437 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    220   :�       �          0    16446    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    222   ��       �          0    16453    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    224   �       �          0    16512    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    226   -�       �          0    16405    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    212   �       �          0    16396    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    210   �       �          0    16541    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    227   <�       �           0    0    Libros_autor_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Libros_autor_id_seq"', 5, true);
          public          postgres    false    228            �           0    0    Libros_carrito_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Libros_carrito_id_seq"', 19, true);
          public          postgres    false    238            �           0    0    Libros_categoria_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Libros_categoria_id_seq"', 7, true);
          public          postgres    false    234            �           0    0    Libros_libro_categoria_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."Libros_libro_categoria_id_seq"', 34, true);
          public          postgres    false    236            �           0    0    Libros_libro_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Libros_libro_id_seq"', 15, true);
          public          postgres    false    230            �           0    0    Libros_stock_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Libros_stock_id_seq"', 34, true);
          public          postgres    false    232            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    215            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    217            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);
          public          postgres    false    213            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    221            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public          postgres    false    219            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    223            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 79, true);
          public          postgres    false    225            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);
          public          postgres    false    211            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 23, true);
          public          postgres    false    209            �           2606    16556    Libros_autor Libros_autor_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Libros_autor"
    ADD CONSTRAINT "Libros_autor_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Libros_autor" DROP CONSTRAINT "Libros_autor_pkey";
       public            postgres    false    229            �           2606    16625 "   Libros_carrito Libros_carrito_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public."Libros_carrito"
    ADD CONSTRAINT "Libros_carrito_pkey" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public."Libros_carrito" DROP CONSTRAINT "Libros_carrito_pkey";
       public            postgres    false    239            �           2606    16592 &   Libros_categoria Libros_categoria_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Libros_categoria"
    ADD CONSTRAINT "Libros_categoria_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."Libros_categoria" DROP CONSTRAINT "Libros_categoria_pkey";
       public            postgres    false    235            �           2606    16611 Q   Libros_libro_categoria Libros_libro_categoria_libro_id_categoria_id_ecd8ddd2_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public."Libros_libro_categoria"
    ADD CONSTRAINT "Libros_libro_categoria_libro_id_categoria_id_ecd8ddd2_uniq" UNIQUE (libro_id, categoria_id);
    ALTER TABLE ONLY public."Libros_libro_categoria" DROP CONSTRAINT "Libros_libro_categoria_libro_id_categoria_id_ecd8ddd2_uniq";
       public            postgres    false    237    237            �           2606    16599 2   Libros_libro_categoria Libros_libro_categoria_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."Libros_libro_categoria"
    ADD CONSTRAINT "Libros_libro_categoria_pkey" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public."Libros_libro_categoria" DROP CONSTRAINT "Libros_libro_categoria_pkey";
       public            postgres    false    237            �           2606    16565    Libros_libro Libros_libro_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Libros_libro"
    ADD CONSTRAINT "Libros_libro_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Libros_libro" DROP CONSTRAINT "Libros_libro_pkey";
       public            postgres    false    231            �           2606    16572    Libros_stock Libros_stock_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Libros_stock"
    ADD CONSTRAINT "Libros_stock_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Libros_stock" DROP CONSTRAINT "Libros_stock_pkey";
       public            postgres    false    233            �           2606    16539    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    216            �           2606    16479 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    218    218            �           2606    16435 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    218            �           2606    16426    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    216            �           2606    16465 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    214    214            �           2606    16419 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    214            �           2606    16451 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    222            �           2606    16494 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    222    222            �           2606    16442    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    220            �           2606    16458 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    224            �           2606    16508 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    224    224            �           2606    16534     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    220            �           2606    16520 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    226            �           2606    16412 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    212    212            �           2606    16410 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    212            �           2606    16403 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    210            �           2606    16547 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    227            �           1259    16639     Libros_carrito_libro_id_5600cba6    INDEX     c   CREATE INDEX "Libros_carrito_libro_id_5600cba6" ON public."Libros_carrito" USING btree (libro_id);
 6   DROP INDEX public."Libros_carrito_libro_id_5600cba6";
       public            postgres    false    239            �           1259    16578    Libros_libro_autor_id_437ac02f    INDEX     _   CREATE INDEX "Libros_libro_autor_id_437ac02f" ON public."Libros_libro" USING btree (autor_id);
 4   DROP INDEX public."Libros_libro_autor_id_437ac02f";
       public            postgres    false    231            �           1259    16613 ,   Libros_libro_categoria_categoria_id_357be358    INDEX     {   CREATE INDEX "Libros_libro_categoria_categoria_id_357be358" ON public."Libros_libro_categoria" USING btree (categoria_id);
 B   DROP INDEX public."Libros_libro_categoria_categoria_id_357be358";
       public            postgres    false    237            �           1259    16612 (   Libros_libro_categoria_libro_id_724beca1    INDEX     s   CREATE INDEX "Libros_libro_categoria_libro_id_724beca1" ON public."Libros_libro_categoria" USING btree (libro_id);
 >   DROP INDEX public."Libros_libro_categoria_libro_id_724beca1";
       public            postgres    false    237            �           1259    16584    Libros_stock_libro_id_c78ceb73    INDEX     _   CREATE INDEX "Libros_stock_libro_id_c78ceb73" ON public."Libros_stock" USING btree (libro_id);
 4   DROP INDEX public."Libros_stock_libro_id_c78ceb73";
       public            postgres    false    233            �           1259    16540    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    216            �           1259    16480 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    218            �           1259    16481 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    218            �           1259    16466 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    214            �           1259    16496 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    222            �           1259    16495 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    222            �           1259    16510 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    224            �           1259    16509 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    224            �           1259    16535     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    220            �           1259    16531 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    226            �           1259    16532 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    226            �           1259    16549 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    227            �           1259    16548 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    227                       2606    16632 B   Libros_carrito Libros_carrito_libro_id_5600cba6_fk_Libros_libro_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Libros_carrito"
    ADD CONSTRAINT "Libros_carrito_libro_id_5600cba6_fk_Libros_libro_id" FOREIGN KEY (libro_id) REFERENCES public."Libros_libro"(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public."Libros_carrito" DROP CONSTRAINT "Libros_carrito_libro_id_5600cba6_fk_Libros_libro_id";
       public          postgres    false    231    239    3305                       2606    16573 >   Libros_libro Libros_libro_autor_id_437ac02f_fk_Libros_autor_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Libros_libro"
    ADD CONSTRAINT "Libros_libro_autor_id_437ac02f_fk_Libros_autor_id" FOREIGN KEY (autor_id) REFERENCES public."Libros_autor"(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public."Libros_libro" DROP CONSTRAINT "Libros_libro_autor_id_437ac02f_fk_Libros_autor_id";
       public          postgres    false    231    3302    229                       2606    16605 N   Libros_libro_categoria Libros_libro_categor_categoria_id_357be358_fk_Libros_ca    FK CONSTRAINT     �   ALTER TABLE ONLY public."Libros_libro_categoria"
    ADD CONSTRAINT "Libros_libro_categor_categoria_id_357be358_fk_Libros_ca" FOREIGN KEY (categoria_id) REFERENCES public."Libros_categoria"(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public."Libros_libro_categoria" DROP CONSTRAINT "Libros_libro_categor_categoria_id_357be358_fk_Libros_ca";
       public          postgres    false    3310    235    237                       2606    16600 R   Libros_libro_categoria Libros_libro_categoria_libro_id_724beca1_fk_Libros_libro_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Libros_libro_categoria"
    ADD CONSTRAINT "Libros_libro_categoria_libro_id_724beca1_fk_Libros_libro_id" FOREIGN KEY (libro_id) REFERENCES public."Libros_libro"(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public."Libros_libro_categoria" DROP CONSTRAINT "Libros_libro_categoria_libro_id_724beca1_fk_Libros_libro_id";
       public          postgres    false    231    3305    237                       2606    16579 >   Libros_stock Libros_stock_libro_id_c78ceb73_fk_Libros_libro_id    FK CONSTRAINT     �   ALTER TABLE ONLY public."Libros_stock"
    ADD CONSTRAINT "Libros_stock_libro_id_c78ceb73_fk_Libros_libro_id" FOREIGN KEY (libro_id) REFERENCES public."Libros_libro"(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public."Libros_stock" DROP CONSTRAINT "Libros_stock_libro_id_c78ceb73_fk_Libros_libro_id";
       public          postgres    false    231    233    3305            �           2606    16473 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    214    218    3264            �           2606    16468 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    216    218    3269            �           2606    16459 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3259    212    214            �           2606    16488 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    216    222    3269            �           2606    16483 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    220    222    3277            �           2606    16502 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    3264    214    224            �           2606    16497 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    224    220    3277            �           2606    16521 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    226    212    3259                        2606    16526 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    226    3277    220            �   @   x�3�tO�/JOU��S�M,*���2�.I-�H�S���K�2���ʃPH~NvfjW� ��      �      x�3��4�44�2��4�4����� ��      �   ]   x�3�<�Y����e�閘W�X|xm"�1�[frr���y
��%�7�T�p���q�"�}�SR����8��R�KJ�s���*�b���� �$      �      x�}ZMsG�=S���;0���!j�$[�H-)�|�#�����.��a��EGx���Gl�ˬ�!��$�FUV�˗/�0��{ӛ�z�����*���eL�ml����}y��ׇ�z;�\.�~�����L4?�k��֬Mk{k�	1��o���3Cg�����o�\�鰲��K��]�����1�Z!��5��x�u]��"��G�y�RZיyL�׷k��ɾ�.��f9��&��J�k�	|ou�7_:,�|,c�W���eX-��,S\�{�L\6ɑ�ro��r2,hq��v�C��㿏	ﭜ�z����v�CK~|��m��.m����>��؇[�.[�9_
x*�[�41�c�Ұ�A�n�s��w)v<�|����専��Ա��I��*�|آ�V�3�H���zvi�����gԺ2|e�G���������ޯJ��b�f���E��֦��i��`��]M͹�p>L4���ɧ	lC�2�ľ��\Y��'��Wc���s����
�a����p(<��1��
�h��mC�cmz�����2�v�W��XJ�?���V��w��ib��.��E�[`��Z���m�����{8��� Lq�`� ��pD�tov|t��w��h��E��^rk����+���^{�o���͛{	[U��'����G��N����n~T͏O�V��}ܺފ5u1�#� T�x���e���a�Zk%��bHp����X�d��6�C��u��u^�ys�\Pq.yq��@p�-���f�Sa�Z  �}�_�����b���G���e��`>"bq�:5�)�g������\�z&��仚Y��:Dd��G�4������/��������mX�K�b�ޫ͵����}�c�����s�-~� Ě�Ͻ'N
�B�|�W�	�B�rs�jz��2��2y��vH1�2t� ��Jr�8a��cP�=��nk��b`�f3O���m2|�bZ *ӳ�yg<>��_�:��u���h�k�����<*�/X�
���+ c:�d�$8��d��MrLHS@+M�#�){�4ʦ��L���a�,��`\Zx��tO"���/(Rߌ�=�_W�H��@�Lm���~��VL?�2l��	pVZV&�/J�`	�H�ݶĀj|`�wpt4��{����K�+��XeO��}�H�C���ù����T���-%$ c�\b���k�|�f6�ߗ�D/����3q_>��A��}.��<>�ι�\(���C<#��J2ym�678�R��<�|Y��(�k��=���׺�_ iy�R��!��BX�ip��-�����TJ�<wP:�B2_w�wP	n�p�_�m�j��	��%}��>T<��RN�� XWDPmB������0�;������ P�x.;��*?��(rL:���1�2�7���j1M�.+�yV�����M���n%ʿ�O��V��6�g�#�.�Fr�b7
�
�AR!�.i�J�˪L�GB�*x��qP�j�s�M�m��Z��<���1?F-r�J��m�:�b���{�-Gw��@�CǦl�l��jh�&$1�{�܀��:�>��Q*9&�pIW?^����ۻ��q��}(S?x��(9��	$� 8Q���P��`N�̝�=��X[*��	
V�R�c���g0F�S���tU�u�=�o�g�����6d)�_��Ҋ�C�EM_���������b)��Z95_#9��Pm���q���/�_�2 Rz�M�bLgn.��'�$�J�����AqW�Y��=���t�Ƚ��<p�#Z�S�YV���#�e~�(@C(TPR_�����U��䮘3�
�y �܊5���E����G��>_�I���fs�D%��oNHqs�KY��-�5��D|� no�B���miԊ'�!����r�8^R�;*��h��j$�D��p��67�L�ky���8�P��"N�dA��%������S�]��R.4p��-eM�åU|���ԯ�S*K��O�B�E�#{j@��TfBeV1(��ׯ����7;�K�n�&�{,�4�dbK��MEM������,ߪ��6!P�����WYkR��D�����3�V%�>�	~��u��$�ާeI���	�%/o�o�Ķ�I��'Z>Wԕ�@��#�B-ThVK����En�B�Ŏ��x1	3�R@F��qrAY�7��ȩy��bs���j��Q�Wd�`��+qŖ����.
�ȡm��~Ypd�\
W���P�Z�����ѨQ��(�"���6����Ssлt�-ʊv��~�4kz4۬G��'H���K�s���Xo���*?�� /�qA�`�|z���P!�{�~��K�g���S����J�W�w:ʜA`sV�1�m�N�<�չ�Լ�Qޥ�%��U0d�^��9��KԻJ�@(�@��!�K׉'�޴�������	��8:�^��*RR^D��{"DX
]��[XPn��+"I���K��{�>�V8�)��:��d����`wо�^�h�e��"�D����u(J���F�Į+�C"@�ޣ�b���@S@�
�E"�޵^Z�rT1���%O)$�j9�P���I�:0�ܬ�5ۢ9���I��~�\��-�j�+D��qNt1�u�q�S���	G����� �R�d���B�^���x�<sV?�;&�mQ�����XbI�D��
�-N3�ma<�N+�zaii?�����tƁ�)���M9�)�K�ӓg�����<��n�CP���I���(
q���V��Co��s��zy������ʌՊV���}�F+J���A�@�b���X�JY��-'2��=hP�x+tZB�R�5ޱFw�G�BM*��,+-�?bR�a�]�툒�S�r��}�o�Y8P�m��׮|��s�>RA*m	��q�{�]?�{�c�*����g��yv AR|Tn��o�+�Qk�4��z@ͩ=j�{n4<̀w��^�:c� y��~�b��~�����:ier�\�tB߻0-�(�R��������ԠzG��8v��.�r�����N�lX�$�SGeS��-@� ���y�h�:盛����n���b��V"##P=�HGM�����(�+,W������!Vv���yN25�k�V�P嵯���I�x������_$�O��³C�r�(V���?�G>'�x��i/�6�^��?��U�=8����5��`V�l5�wG����t��E�	TE3�Z�)=��oS���s���L��r��hNR]��V9�� ����$b\��9���\rx��WK�کN�T藯9H ˷��E�q��m�4�6���ge'��t=0��y�BE�?�cJ�|-�4������dю�X!ܰ�[dH(�R۳I40|��o���1�t���5����[��C�L&6�Р��*���6�F�m��Qk�;��В��8�e�+�6�I�M�v��Sy<*W<(���xy���GZ��e��7�F��-���Ȟ;0�:z��9����d��UOz=(�8������U�ld8Y"M ��2���Ց/�n�=-T�Ke��`�	䳑�3`\�^����>��<zr����crWy�x�v���>�9]���5��&p; ^q�E=v���� ���q��'��ɭ��`�	�D����A~u>�#}�׈�㘌�sF�ӛo����SҒ�0�M���VG�#��O&��7��i�Z4���w��kY�+���(�M���P����t����P�>�E�X�����`�')I�sY�m�Z����Rh:Y��΀ ��p�C�k1M�3T��1�ϣ�&��=�:J]ߺ�e�r56���w�c)s��mÀ��ܶ����QD�K�H+j�i�^m�bw���&K�ܲ�۾�]CKV�>q>K�TJ� �N�{y�:_)���h�r͊ߗ֌�by�V �k�ԯ�1�t���H���U��27$��3 �9��zy���~.���/a�:^)�-�:�
�y�t*�q%SQ�8gp�r�jʞ#����ۼ������}2c1+�Ƀ�������6�4��P2BmT%i�9R��$}�Q���4?Z/�� �  ]h�ji����T`��L�*,=km)�E}�͗�����ϗz;Nʒ�e<Y��8����"	^m��5�]r�a��������/�%:�+����s�6���&��B�����~;�ߍ�E'�!�=��&�W��|o#�x�Ā?5g���~B�vbv�x�]z��&YZ޻b���ǃ���W�O��?�qvxtrxpp||4]v�����v�o|�"�Sȥ����+�Xf���𢈃��pN6 rg���Rj�ftJ�6.�o��Ʌ�(��
��΃䥡�𺆪��Ћ�d�,�K-Ҹ��kɺ�M�9X�ic��үH�J�LeK7(��[3ق��;i-"f���v��Dµ�%����3�.#(���r[�x�sU
F1���Fg.������*�Iv��b0�ǭ�"�u�筓s�7�
��������7��C�`Iǽ�<����z x͌�A�����.��R�bJ�;�C�G�� ��t!��%HØ�r�3
Y2�?d��0}����b      �   v   x���D!ѳ;��Xr���1募(!CZ����f��5�0C��z�)� �);�Ķ;q� �ڳ�?hł�pc_)b��b�5r�G:/sEq�P�?�7�2��������9}?I3�$      �   �   x�]��n�0Egޏ)LR�1�ЌY��:4��(�%^xD�������%S��J�<\���x��X��8޲�����!�ʑ�m�jx�Wk�,���<�`�4a�SG��0�d��4�3W�sC��*,�|u��ǈ���b5��4Wuqty���({�*o��Qnk$�l��N�vݥ��^�u��y��"���!=��\�γ���7Bd�t      �      x������ � �      �      x������ � �      �   �  x�]�[n�0E��U������mT�(Q�)h5�/����G�|��޺���ꖆ*NK~����v���鿺i�����x���$`����:�{�?�<�ir5�I����N�'�gXT�Y	����!������Z���EH�N��!��0 �n��:��Z؏>�z>ui<=� ��QfSFc�T&�iZ��U�����W|8k�'���^O<�i�~�'t��q�G���Mޅ!ς��FzSY�
"I��%ew8�����B��5#�A��3�@mI�m��ɝ��Ͼ1)�>�}DL��W��J1�ޱ-)�����d?�����DL��] ��� ��*������m/����$k�s,�M�f9Åmu�5��.(˜�%������a��q��+\q#��f�"/b$���=��?j��քXV"��X("JEY�A���{�T�H�      �   �   x�]��
�@ ��St��~�A��ZA*EF���nkj	=}vm��05iu�¹�Q�t�hxD4r�=��C]������Y���Q��Sƃ��CRdk�Zz�;�V�s3C�$�%�N�b�nUƠj`IXA=jy�B1�=�S��w������q6��cԔ-ݰ��C8ɂ |\t2e      �      x������ � �      �      x������ � �      �   B  x��Z�r�6>����S�`������FY�II�^��5�ȓ�I-g�U�T)��<�_leK���I�Y�J�?4����P">�D�Tɏ$a�{PO$�`��j�vE{�s=�_���[��v\-��,~���fvG86��0ʃ��Ы�y�Nrl�RC�$�Yabs��ؐ�,(�3K�Y�����T^X'Qa��]5o�������ä6��R ohlcpl���䄔�,��h����.��T���u�m�Mƿ�eJ�KDa�1q�ϪM}�v�jzO@�5�Z�I����ż��M���G����F&��i_iV��dv }_� *����>ǲ�,�SXԠ�/�����M��r���g�����ؚ��5D��	5���Y,�bӵM�.�gU����^֫���x���In�*�P*H�T�5z��}��:���_�i/Y7:uc��?�3{�vj��`�^_V�iWY_7
A���P(�H�ehg/k�����U��gG����dO\r��ZK��U����o���]u�6����q��`�}�Fx��ژ
g���}��X6��?���0���z[w]��2�-����h�����~�.��&7�ؔ��9#ݐg�yW7�檫VY3��a�㊳֛^L��Ŋ�v}����֕��"�ft�I����Ȱ�f��6G�� K�,"JQd?���x���Wۢ��Љ2%Y�|cq��7��8<o��/�:G�hƖ�;������TŁY���r�y�j�E�,W����`����U�\T��j�Y�M�����(����"��nl�s�:��I�{��b�_���v��ċ�t�\G�2D/j��鳉}4m&�\Oq�VTPC�󂌙Ɍգʡ%HM����k�HMD7
w�)��*����"b;��a��/�?�l����� S�J"!Y�#M��%�yW���1�=Xb���oAС��=��_ ����B�ӱ+>@��`S &�i�% \�T�R`ș�Dy?�>u�$���pS�2�dbZ�0_xr��Hr?�:gB�܎ZA��mr3%��*�,DU�6���2=]�`�K�]����H�8;{������We��p5o�,^�|u�� �ŗśw�_�~��7'ϟ>qVr�s�R�XJ%��AQ��^��fA�1(1���Z�@�WF[PQ��B'<K���,��	v[�t�#��"n�[s����m�es�\�+4��𩨼6�m�����cvHj9v�~�j���rTZ�Q�d���M���i��@R9H0��y.��d3���)W^:�QVH�I;�=&&�T{#
V��͑��:yH�*�����1th��!�H���)+����Q�0`22����Y�l�L�wW-��q1�� �S�LԔ��y���(֔�	�j{&<�W)��Gn�PR�>��{�%d3c��a��F0O/�����#���ǫ!fn
�C(f.jfD�6��1/����OA�R͜H���p0�-��y���p��3"c:k�5Ɠ'�)d�Ԅ,�ې=��z�x`���m1�+���&v1��D�13)]�0���(�$���ͦ����֛��J��m��6{�锔��:��'�"�ܔ�ux�R4;�>�^�����8-�����/2�ͦ����p�{�"6�ۃ�FnWm���x�p��x��w�{�Y˦4��4�����Or�ɑ+'�6�h�������-����25�#���1���!Y`)Y��nB�Q����EE�%8"jf�tT\�O?��d�v��m8��.�I�8�����[nv�yE`�#�ƶX��Kf<mK�m��h��2f�p�}����+���W~SG�M�Ἣ?�0�K�	�`�      �   �   x�M�K�0Dמ� R�w�lB�JDG����i��<�I3v�c�4p�Ʉ�|�'�(cRM��[M/\�+T���6�l*Q�G��ik8�5݅u`���\�qx�mo�gI���H2�뾦Ο=n o�vF8      �     x���mn�0��S�A��7g�#�dy�7��5P5�_R -j*!���x�z�Pԡ]7���!����mS A<9��BLO���dgBOX�i|}N0�2@{i}��8Wa��	�Tg������LZ>{�:$Uev��A7G⌭G:�WS�_� ]�γK|I?��0���l�U�IsYr��mFM�b�!��y��wӸ��:T	�f�ZU�����r���S�fb9�Z�ޒ_s9������Ydu𽣱Ø��igSs|�Z�B1[`������5�9w�C{&��S�Ky����1�a>}c��u�`��O��:u�η1'�\�-l5�/�H�����P���1L��4���%*�j�L}�ș>��ۮ#����2� ����|2ߴD"�XU������UDW\�*]<j���������'�늈���~��x������
T$�%ȼ<�g��1�d��ԞvCeFO՗�����q�򇥕E�ƫ��.�#%�йy��x��k�ˍ�/�rS��/*��]�N��͘�      �     x�=��n�  ���)�m�:����S1#Jv�Bk��)O?��N�w���|����������7�i�葏����]��&6��#�v������1�9Vv��X�H�Q�KKN��P�*�W�t����f*Ux��GU 
�Ev�"�5��)�dX����[1]-��-_�����#���r�ϱ����6S�c��yQ��\* e��k�ʁ���Ei!lm�0�d`tݢ_9	]�Ȧ�lf����=�M�o��� ��!�m}Dz�[��~Pi�     