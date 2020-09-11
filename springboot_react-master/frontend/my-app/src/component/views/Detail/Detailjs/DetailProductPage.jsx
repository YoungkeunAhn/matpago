import React, { Component } from 'react'
import ProductImage from "./ProductImage";
import ProductInfo from "./ProductInfo";
import ProductReview from './ProductReview';

function DetailProductPage() {
    return (

        <div className="DetailProductPage" >

            {/* ProductImage */}
            <ProductImage/>
            <div style={{ textAlign: 'left'}}>
                <label style={{fontSize:'25px', marginRight:
                        '1rem'}}>바위파스타바</label>
                <label style={{fontSize:'20px',color:'#FFBB00'}}>4.8</label>
            </div>
            {/* ProductInfo */}
            <ProductInfo/>
            {/* ProductReview */}
            <ProductReview/>
        </div>
    )
}

export default DetailProductPage