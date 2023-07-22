import React from 'react';
import {
  MDBFooter,
  MDBContainer,
  MDBIcon,
  MDBBtn
} from 'mdb-react-ui-kit';

export default function App() {
  return (
    <MDBFooter className='text-center text-white mt-4 mr-0' style={{ backgroundColor: '#1b3264' }}>
      <MDBContainer className='pt-4 d-flex flex-column'>
        <section className='mb-4'>
          <MDBBtn
            rippleColor="#fcb75f"
            color='#fcb75f'
            floating
            size="lg"
            className='text-darkk m-1'
            href='facebook.com'
            role='button'
          >
            <MDBIcon fab className='fab fa-facebook-f' />
          </MDBBtn>

          <MDBBtn
            rippleColor="dark"
            color='link'
            floating
            size="lg"
            className='text-darkk m-1'
            href='twitter.com'
            role='button'
          >
            <MDBIcon fab className='fa-twitter'  />
          </MDBBtn>

          <MDBBtn
            rippleColor="dark"
            color='link'
            floating
            size="lg"
            className='text-darkk m-1'
            href='google.com'
            role='button'
          >
            <MDBIcon fab className='fa-google' />
          </MDBBtn>

          <MDBBtn
            rippleColor="dark"
            color='link'
            floating
            size="lg"
            className='text-darkk m-1'
            href='instagram.com'
            role='button'
          >
            <MDBIcon fab className='fa-instagram' />
          </MDBBtn>

          <MDBBtn
            rippleColor="dark"
            color='link'
            floating
            size="lg"
            className='text-darkk m-1'
            href='likedin.id'
            role='button'
          >
            <MDBIcon fab className='fa-linkedin' />
          </MDBBtn>

          <MDBBtn
            rippleColor="dark"
            color='link'
            floating
            size="lg"
            className='text-darkk m-1'
            href='github.com'
            role='button'
          >
            <MDBIcon fab className='fa-github' />
          </MDBBtn>
        </section>
      </MDBContainer>
      <MDBContainer>
      <div className='container'>
      <div className='text-center text-darkk p-3' style={{ backgroundColor: '#f5812b' }}>
        © 2022 Menit.com
        </div>
        </div>
      </MDBContainer>
    </MDBFooter>
  );
}