import React from 'react'
import ImageGallery from 'react-image-gallery';

const images = [
    {
        original: 'https://mp-seoul-image-production-s3.mangoplate.com/338150_1587224007095134.jpg',
        thumbnail: 'https://mp-seoul-image-production-s3.mangoplate.com/338150_1587224007095134.jpg',
    },
    {
        original: 'https://mp-seoul-image-production-s3.mangoplate.com/411159/449685_1598446203543_16681',
        thumbnail: 'https://mp-seoul-image-production-s3.mangoplate.com/411159/449685_1598446203543_16681',
    },
    {
        original: 'https://mp-seoul-image-production-s3.mangoplate.com/sources/web/restaurants/411159/1042666_1597935404341',
        thumbnail: 'https://mp-seoul-image-production-s3.mangoplate.com/sources/web/restaurants/411159/1042666_1597935404341',
    },
];

function ProductImage() {
    return (
        <div>
            <ImageGallery items={images} />
        </div>

    )
}

export default ProductImage