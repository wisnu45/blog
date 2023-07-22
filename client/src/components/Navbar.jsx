import { Link } from "react-router-dom";
import { AuthContext } from "../context/authContext";
import Logo from "../img/logo.png";
import React, { useContext } from "react";
import Container from 'react-bootstrap/Container';
import Nav from 'react-bootstrap/Nav';
import Navbar from 'react-bootstrap/Navbar';
import NavDropdown from 'react-bootstrap/NavDropdown';

const NavbarKU = () => {
  const { currentUser, logout } = useContext(AuthContext);

  return (
    <div class="fontbeda">
      <Navbar collapseOnSelect expand="sm" style={{ backgroundColor: '#1b3264' }} display="flex" sticky="top">
        <Container>
          <div className="logo">
          <Link to="/">
          <img src={Logo} alt="" />
          </Link>
          </div>
        <Navbar.Toggle aria-controls="responsive-navbar-nav" />
        <Navbar.Collapse id="responsive-navbar-nav">
          <Nav className="me-auto" >
            <Nav.Link href="/?cat=art">SENI</Nav.Link>
            <Nav.Link href="/?cat=science">SAINS</Nav.Link>
            <Nav.Link href="/?cat=technology">TEKNOLOGI</Nav.Link>
            <Nav.Link href="/?cat=cinema">FILM</Nav.Link>
            <Nav.Link href="/?cat=design">DESAIN</Nav.Link>
            <Nav.Link href="/?cat=food">KULINER</Nav.Link>
          </Nav>
            <Nav>
              <div class="containe" style={{Color: 'white' }}>Account</div>
              <NavDropdown align="end" title={currentUser?.username} id="collasible-nav-dropdown">
                
                {/* <NavDropdown.Item href="../pages/myprofile">
                  My Profile
                </NavDropdown.Item> */}

                <Nav.Link eventKey={4}>
                  <span className="myprofile">
                    <Link className="link" to="/myprofile">My Profile</Link>
                  </span>
                </Nav.Link>

              <NavDropdown.Item href="/pages/myprofile">
                Edit Profile
              </NavDropdown.Item>
              <NavDropdown.Divider />
              <NavDropdown.Item>
                {currentUser ? (
            <span onClick={logout}>Logout</span>
          ) : (
            <Link className="link " to="/login">
              Login
            </Link>
          )}
              </NavDropdown.Item>
            </NavDropdown>
            <Nav.Link eventKey={2}>
              <span className="write">
                  <Link className="link" to="/write">Write</Link>
              </span>
            </Nav.Link>
          </Nav>
        </Navbar.Collapse>
      </Container>
    </Navbar>
      </div>
    
  );
}
    
    // <div className="navbar">
    //   <div className="container">
        // <div className="logo">
        //   <Link to="/">
        //   <img src={Logo} alt="" />
        //   </Link>
        // </div>
    //     <div className="links">
    //       <Link className="link" to="/?cat=art">
    //         <h6>ART</h6>
    //       </Link>
    //       <Link className="link" to="/?cat=science">
    //         <h6>SCIENCE</h6>
    //       </Link>
    //       <Link className="link" to="/?cat=technology">
    //         <h6>TECHNOLOGY</h6>
    //       </Link>
    //       <Link className="link" to="/?cat=cinema">
    //         <h6>CINEMA</h6>
    //       </Link>
    //       <Link className="link" to="/?cat=design">
    //         <h6>DESIGN</h6>
    //       </Link>
    //       <Link className="link" to="/?cat=food">
    //         <h6>FOOD</h6>
    //       </Link>
    //       <div className="kotak">
    //       <span>{currentUser?.username}</span>
          // {currentUser ? (
          //   <span onClick={logout}>Logout</span>
          // ) : (
          //   <Link className="link" to="/login">
          //     Login
          //   </Link>
          // )}
    //       <span className="write">
    //         <Link className="link" to="/write">
    //           Write
    //         </Link>
    //         </span>
    //         </div>                                                             n                                                                                                  
    //     </div>
    //   </div>
    // </div>

export default NavbarKU;
