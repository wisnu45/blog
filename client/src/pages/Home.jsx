import React from "react";
import { useEffect } from "react";
import { useState } from "react";
import { Link, useLocation } from "react-router-dom";
import axios from "axios";
import Carousel from 'react-bootstrap/Carousel';
import seni from "../img/art.jpg";
import film from "../img/cinema.jpg";
import desain from "../img/desain.jpg";
import kuliner from "../img/kuliner.jpg";
import sains from "../img/science.jpg";
import teknologi from "../img/teknologi.jpg";

const Home = () => {
  const [posts, setPosts] = useState([]);

  const cat = useLocation().search

  useEffect(() => {
    const fetchData = async () => {
      try {
        const res = await axios.get(`/posts${cat}`);
        setPosts(res.data);
      } catch (err) {
        console.log(err);
      }
    };
    fetchData();
  }, [cat]);
  // const posts = [
  //   {
  //     id: 1,
  //     title: "Lorem ipsum dolor sit amet consectetur adipisicing elit",
  //     desc: "Lorem, ipsum dolor sit amet consectetur adipisicing elit. A possimus excepturi aliquid nihil cumque ipsam facere aperiam at! Ea dolorem ratione sit debitis deserunt repellendus numquam ab vel perspiciatis corporis!",
  //     img: "https://images.pexels.com/photos/7008010/pexels-photo-7008010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
  //   },
  //   {
  //     id: 2,
  //     title: "Lorem ipsum dolor sit amet consectetur adipisicing elit",
  //     desc: "Lorem, ipsum dolor sit amet consectetur adipisicing elit. A possimus excepturi aliquid nihil cumque ipsam facere aperiam at! Ea dolorem ratione sit debitis deserunt repellendus numquam ab vel perspiciatis corporis!",
  //     img: "https://images.pexels.com/photos/6489663/pexels-photo-6489663.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
  //   },
  //   {
  //     id: 3,
  //     title: "Lorem ipsum dolor sit amet consectetur adipisicing elit",
  //     desc: "Lorem, ipsum dolor sit amet consectetur adipisicing elit. A possimus excepturi aliquid nihil cumque ipsam facere aperiam at! Ea dolorem ratione sit debitis deserunt repellendus numquam ab vel perspiciatis corporis!",
  //     img: "https://images.pexels.com/photos/4230630/pexels-photo-4230630.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
  //   },
  //   {
  //     id: 4,
  //     title: "Lorem ipsum dolor sit amet consectetur adipisicing elit",
  //     desc: "Lorem, ipsum dolor sit amet consectetur adipisicing elit. A possimus excepturi aliquid nihil cumque ipsam facere aperiam at! Ea dolorem ratione sit debitis deserunt repellendus numquam ab vel perspiciatis corporis!",
  //     img: "https://images.pexels.com/photos/6157049/pexels-photo-6157049.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
  //   },
  // ];

  const getText = (html) =>{
    const doc = new DOMParser().parseFromString(html, "text/html")
    return doc.body.textContent
  }

  return (
    <div>
      <Carousel variant="darkgrey">
        <Carousel.Item>
        <img
          className="caroseul "
            src={seni}
          alt="Seni Slide"
        />
        <Carousel.Caption>
          <h5>Selamat Datang di Portal Berita Menit</h5>
            <p className="caption">Lihat Informasi Berita tentang Seni Terkini di Website Menit</p>
            <a href="/?cat=art" className="button">Baca Selengkapnya</a>
        </Carousel.Caption>
      </Carousel.Item>
      <Carousel.Item>
        <img
          className="caroseul"
            // src={foto2}
            src={sains}
            alt="Sains Slide"
        />
        <Carousel.Caption>
          <h5>Portal Berita menyajikan Informasi Dalam dan Luar Negeri</h5>
          <p className="caption">Lihat Informasi Berita tentang Sains Terkini di Website Menit</p>
          <a href="/?cat=science" className="button">Baca Selengkapnya</a>
          </Carousel.Caption>
      </Carousel.Item>
      <Carousel.Item>
        <img
          className="caroseul"
            src={teknologi}
            alt="Teknologi Slide"
        />
        <Carousel.Caption>
          <h5>Dikemas dengan Bahasa yang Jelas dan Padat</h5>
          <p className="caption">Lihat Informasi Berita tentang Teknologi Terkini di Website Menit</p>
          <a href="/?cat=technology" className="button">Baca Selengkapnya</a>
          </Carousel.Caption>
        </Carousel.Item>
        <Carousel.Item>
        <img
          className="caroseul "
            src={film}
          alt="Film Slide"
        />
        <Carousel.Caption>
          <h5>Ditulis oleh Penulis yang Berkompeten Tinggi</h5>
          <p className="caption">Lihat Informasi Berita tentang Film Terkini di Website Menit</p>
        <a href="/?cat=cinema" className="button">Baca Selengkapnya</a>
          </Carousel.Caption>
      </Carousel.Item>
      <Carousel.Item>
        <img
          className="caroseul"
            // src={foto2}
            src={desain}
            alt="Desain Slide"
        />
        <Carousel.Caption>
          <h5>Bersumber dari Narasumber Terpercaya</h5>
          <p className="caption">Lihat Informasi Berita tentang Desain Terkini di Website Menit</p>
        <a href="/?cat=design" className="button">Baca Selengkapnya</a>
          </Carousel.Caption>
      </Carousel.Item>
      <Carousel.Item>
        <img
          className="caroseul"
            src={kuliner}
            alt="Kuliner Slide"
        />
        <Carousel.Caption>
          <h5>Mudah diakses diakses Kapanpun dan Dimanapun anda berada</h5>
          <p className="caption">Lihat Informasi Berita tentang Kuliner Terkini di Website Menit</p>
          <a href="/?cat=food" className="button">Baca Selengkapnya</a>
          </Carousel.Caption>
      </Carousel.Item>
    </Carousel>
    <div className="home">
      <div className="posts">
        {posts.map((post) => (
          <div className="post" key={post.id}>
            <div className="img">
              <img src={`../upload/${post.img}`} alt="" />
            </div>
            <div className="content">
              <Link className="link" to={`/post/${post.id}`}>
                <h1>{post.title}</h1>
              </Link>
              <p>{getText(post.desc)}</p>
              <a href={`/post/${post.id}`} className="button">Baca Selengkapnya</a>
            </div>
          </div>
        ))}
      </div>
      </div>
      </div>
  );
};

export default Home;
