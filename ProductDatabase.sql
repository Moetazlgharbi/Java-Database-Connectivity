PGDMP          
            }            lasmer    17.2    17.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    24643    lasmer    DATABASE     �   CREATE DATABASE lasmer WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United Kingdom.1252';
    DROP DATABASE lasmer;
                     postgres    false            �            1259    24730    products    TABLE     �   CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying(255),
    type character varying(255),
    place character varying(255),
    warranty integer
);
    DROP TABLE public.products;
       public         heap r       postgres    false            �            1259    24729    products_id_seq    SEQUENCE     �   CREATE SEQUENCE public.products_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public               postgres    false    218            �           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public               postgres    false    217                        2604    24733    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    217    218            �          0    24730    products 
   TABLE DATA           C   COPY public.products (id, name, type, place, warranty) FROM stdin;
    public               postgres    false    218   �
       �           0    0    products_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.products_id_seq', 7, true);
          public               postgres    false    217            "           2606    24737    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public                 postgres    false    218            �   i   x�M�;
�P��zf1���ښl��2MP�@B�������g����&���:`|��U JMғ�)�iI�Vz�����,)��+���m�5��W��y#�|�7t     