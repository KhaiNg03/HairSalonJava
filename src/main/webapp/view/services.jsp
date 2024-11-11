<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="view/css/services.css">
</head>
<body>



<div class="container-content">
    <!-- Left Sidebar (Service Menu) -->
    <div class="sidebar">
        <h3>Services</h3>
        <a href="#" onclick="showServiceInfo('haircut')">Hair Cut</a>
        <a href="#" onclick="showServiceInfo('makeup')">Makeup</a>
        <a href="#" onclick="showServiceInfo('massage')">Massage</a>
        <a href="#" onclick="showServiceInfo('headwashing')" style="padding:15px 0px 15px 0px;">Head Washing</a>
        <a href="#" onclick="showServiceInfo('hairdying')"style="padding:15px 15px;">Hair Dying</a>
        <a href="#" onclick="showServiceInfo('haircurling')"style="padding:15px 0px 15px 10px;">Hair Curling</a>
    </div>

    <!-- Main Content Area -->
    <div class="content">
        <!-- Initial Service Sections -->
        <div id="initial-content">
            <div class="service-section">
                <img src="images/haircut.jpg" alt="Hair Cut">
                <div class="service-description">
                    <h3>Hair Cut</h3>
                    <p>Our professional stylists offer a wide range of hairstyles tailored to complement different face shapes and personal styles. We stay updated with the latest trends to provide you with the best experience. Whether you're looking for a simple trim or a bold new look, our team ensures precision and style that will leave you feeling refreshed and confident.</p>
                </div>
            </div>

            <div class="service-section">
                <img src="images/makeup.jpg" alt="Makeup">
                <div class="service-description">
                    <h3>Makeup</h3>
                    <p>Transform your look with our professional makeup service. Our makeup artists specialize in creating stunning looks for all occasions, from weddings to evening events. Using high-quality products and techniques, they will enhance your features, giving you a flawless, radiant look that stands out in any setting.</p>
                </div>
            </div>

            <div class="service-section">
                <img src="images/massage.jpg" alt="Massage">
                <div class="service-description">
                    <h3>Massage</h3>
                    <p>Relax and unwind with our gentle and rejuvenating massage services, designed to relieve stress and tension. Our skilled therapists provide a range of massage techniques, from deep tissue to Swedish, ensuring a tailored experience that helps you recharge and restore balance after a long day.</p>
                </div>
            </div>

            <div class="service-section">
                <img src="images/headwashing.jpg" alt="Head Washing">
                <div class="service-description">
                    <h3>Head Washing</h3>
                    <p>Experience a soothing head wash with premium hair care products and gentle scalp massage techniques. This service not only cleanses your scalp but also promotes blood circulation, leaving you feeling refreshed and invigorated. Perfect for a quick relaxation break that revitalizes both your hair and mind.</p>
                </div>
            </div>

            <div class="service-section">
                <img src="images/hairdying.jpg" alt="Hair Dying">
                <div class="service-description">
                    <h3>Hair Dying</h3>
                    <p>Revamp your style with our professional hair dyeing service, using safe and high-quality products. We offer a variety of colors to choose from, whether you prefer subtle tones or bold, vibrant shades. Our stylists will work with you to select a color that enhances your features, making sure you walk out feeling confident and looking stunning.</p>
                </div>
            </div>

            <div class="service-section">
                <img src="images/haircurling.jpg" alt="Hair Curling">
                <div class="service-description">
                    <h3>Hair Curling</h3>
                    <p>Create beautiful, voluminous curls with our expert hair curling service. Using modern curling technology, we ensure that your curls are long-lasting and look natural. Whether you want soft waves or defined curls, our team will bring out the best in your hair, adding an elegant touch to your overall look.</p>
                </div>
            </div>
        </div>



        <!-- Service Details -->
        <div id="haircut-info" class="service-info">
            <h4>Haircut Service Details</h4>
            <p>Our professional stylists offer a variety of hairstyles, from simple to complex, suitable for different face shapes, hair types, and personal styles. We understand that a good haircut not only enhances appearance but also boosts confidence, and we strive to bring out the best look for each client. With a focus on precision and attention to detail, our stylists stay updated on the latest trends and techniques to deliver modern, stylish cuts. Whether you're looking for a fresh everyday look or a bold transformation, we’re here to ensure you leave feeling satisfied and confident.</p>


            <!-- Illustration Image -->
            <div class="service-image">
                <img src="images/haircut-banner.jpg" alt="Haircut service image" />
            </div>

            <div class="additional-info">
                <h4>Service Steps</h4>
                <ul>
                    <li>Step 1: Consultation to determine a hairstyle that suits your face.</li>
                    <li>Step 2: Cutting and styling as per the client's request.</li>
                    <li>Step 3: Finishing and after-cut care.</li>
                </ul>
            </div>

            <div class="box-wrapper">
                <h4>Hair Cut Service Price List</h4>
                <table class="price-table">
                    <tr>
                        <th>Service</th>
                        <th>Price (VND)</th>
                    </tr>
                    <tr>
                        <td>Men's Haircut</td>
                        <td>100,000</td>
                    </tr>
                    <tr>
                        <td>Women's Haircut</td>
                        <td>300,000</td>
                    </tr>
                    <tr>
                        <td>Children's Haircut</td>
                        <td>80,000</td>
                    </tr>
                </table>
            </div>

            <!-- Booking Button -->
            <div class="booking-button">
                <a href="index.jsp?currentPage=bookNow"  class="btn-booking">Click here to book</a>
            </div>
        </div>

        <!-- Makeup Section -->
        <div id="makeup-info" class="service-info">
            <h4>Makeup Service Details</h4>
            <p>Our professional makeup team will transform you into the most beautiful version of yourself. We offer a variety of makeup styles tailored to different occasions, including natural, everyday looks, glamorous evening makeup, and sophisticated bridal makeup. Our makeup artists are skilled in enhancing your unique features, using high-quality products that suit your skin type and tone. With a focus on precision and artistry, we ensure a flawless finish that complements your style and the occasion. Whether you need a fresh look for a business event, a dramatic transformation for a night out, or an elegant touch for your wedding day, our team is here to make you look and feel exceptional.</p>


            <!-- Illustration Image -->
            <div class="service-image">
                <img src="images/makeup-banner.jpg" alt="Makeup service image" />
            </div>

            <div class="additional-info">
                <h4>Service Steps</h4>
                <ul>
                    <li>Step 1: Consultation to choose a makeup style that suits you.</li>
                    <li>Step 2: Applying makeup as requested.</li>
                    <li>Step 3: Finishing and thorough check before completion.</li>
                </ul>
            </div>

            <div class="box-wrapper">
                <h4>Makeup Service Price List</h4>
                <table class="price-table">
                    <tr>
                        <th>Service</th>
                        <th>Price (VND)</th>
                    </tr>
                    <tr>
                        <td>Bridal Makeup</td>
                        <td>800,000</td>
                    </tr>
                    <tr>
                        <td>Party Makeup</td>
                        <td>600,000</td>
                    </tr>
                    <tr>
                        <td>Everyday Makeup</td>
                        <td>400,000</td>
                    </tr>
                </table>
            </div>

            <!-- Booking Button -->
            <div class="booking-button">
                <a href="index.jsp?currentPage=bookNow" class="btn-booking">Click here to book</a>
            </div>
        </div>

        <!-- Massage Section -->
        <div id="massage-info" class="service-info">
            <h4>Massage Service Details</h4>
            <p>Our professional team provides relaxing massage therapies designed to relieve stress, alleviate pain, and promote overall well-being. With a variety of techniques, including Swedish, deep tissue, hot stone, and aromatherapy massage, we customize each session to meet your unique needs and preferences. Our skilled therapists use gentle, effective methods to reduce muscle tension, improve circulation, and create a tranquil environment for ultimate relaxation. We are committed to offering a rejuvenating experience that helps you escape from daily stress, reset your mind, and restore balance to your body. Whether you're looking for relief from chronic pain, a soothing experience after a busy week, or simply some time to unwind, our massage therapies provide the care and comfort you deserve.</p>


            <!-- Illustration Image -->
            <div class="service-image">
                <img src="images/massage-banner.jpg" alt="Massage service image" />
            </div>

            <div class="additional-info">
                <h4>Service Steps</h4>
                <ul>
                    <li>Step 1: Consultation to determine client needs.</li>
                    <li>Step 2: Applying massage therapy as requested.</li>
                    <li>Step 3: Completion and client satisfaction check.</li>
                </ul>
            </div>

            <div class="box-wrapper">
                <h4>Massage Service Price List</h4>
                <table class="price-table">
                    <tr>
                        <th>Service</th>
                        <th>Price (VND)</th>
                    </tr>
                    <tr>
                        <td>Relaxing Massage</td>
                        <td>300,000</td>
                    </tr>
                    <tr>
                        <td>Full Body Massage</td>
                        <td>600,000</td>
                    </tr>
                    <tr>
                        <td>Foot Massage</td>
                        <td>150,000</td>
                    </tr>
                </table>
            </div>

            <!-- Booking Button -->
            <div class="booking-button">
                <a href="index.jsp?currentPage=bookNow" class="btn-booking">Click here to book</a>
            </div>
        </div>

        <!-- Head Washing Section -->
        <div id="headwashing-info" class="service-info">
            <h4>Head Washing Service Details</h4>
            <p>Our head washing service is designed to offer a soothing and refreshing experience that goes beyond basic cleansing. By using professional techniques and high-quality products, we gently massage the scalp to stimulate circulation, promote relaxation, and nourish your hair from root to tip. Our skilled team ensures that each session leaves you feeling rejuvenated and stress-free, with hair that looks and feels revitalized. Whether you need a quick refresh or a relaxing scalp massage, our head washing service provides the perfect way to unwind and treat yourself to a little extra care.</p>


            <!-- Illustration Image -->
            <div class="service-image">
                <img src="images/headwashing-banner.jpg" alt="Head washing service image" />
            </div>

            <div class="additional-info">
                <h4>Service Steps</h4>
                <ul>
                    <li>Step 1: Consultation to determine head washing needs.</li>
                    <li>Step 2: Washing and scalp massage using professional techniques.</li>
                    <li>Step 3: Using suitable hair care products post-wash.</li>
                </ul>
            </div>

            <div class="box-wrapper">
                <h4>Head Washing Service Price List</h4>
                <table class="price-table">
                    <tr>
                        <th>Service</th>
                        <th>Price (VND)</th>
                    </tr>
                    <tr>
                        <td>Relaxing Head Wash</td>
                        <td>100,000</td>
                    </tr>
                    <tr>
                        <td>Head Wash & Scalp Massage</td>
                        <td>200,000</td>
                    </tr>
                </table>
            </div>

            <!-- Booking Button -->
            <div class="booking-button">
                <a href="index.jsp?currentPage=bookNow" class="btn-booking">Click here to book</a>
            </div>
        </div>

        <!-- Hair Dying Section -->
        <div id="hairdying-info" class="service-info">
            <h4>Hair Dyeing Service Details</h4>
            <p>We offer professional hair dyeing services featuring an extensive palette of colors and advanced techniques to meet every client's unique style. From classic single-color applications to artistic styles like Ombre, Balayage, and Highlights, our team of experienced colorists is dedicated to delivering vibrant and lasting results. Using high-quality, salon-grade products, we prioritize hair health while ensuring rich color depth and shine. Whether you’re looking to enhance your natural shade or try a bold new look, our experts are here to help you achieve a personalized color that complements your individual style.</p>


            <!-- Illustration Image -->
            <div class="service-image">
                <img src="images/hairdying-banner.jpg" alt="Hair dyeing service image" />
            </div>

            <div class="additional-info">
                <h4>Service Steps</h4>
                <ul>
                    <li>Step 1: Consultation to determine suitable color and dyeing style.</li>
                    <li>Step 2: Performing the dyeing process as selected.</li>
                    <li>Step 3: Finishing and post-dyeing hair care.</li>
                </ul>
            </div>

            <div class="box-wrapper">
                <h4>Hair Dyeing Service Price List</h4>
                <table class="price-table">
                    <tr>
                        <th>Service</th>
                        <th>Price (VND)</th>
                    </tr>
                    <tr>
                        <td>Standard Hair Dyeing</td>
                        <td>600,000</td>
                    </tr>
                    <tr>
                        <td>Ombre Dyeing</td>
                        <td>1,200,000</td>
                    </tr>
                    <tr>
                        <td>Balayage Dyeing</td>
                        <td>1,500,000</td>
                    </tr>
                </table>
            </div>

            <!-- Booking Button -->
            <div class="booking-button">
                <a href="index.jsp?currentPage=bookNow" class="btn-booking">Click here to book</a>
            </div>
        </div>

        <!-- Hair Curling Section -->
        <div id="haircurling-info" class="service-info">
            <h4>Hair Curling Service Details</h4>
            <p>We offer professional hair curling services tailored to create a variety of stunning looks, from voluminous curls to effortless beach waves. Our stylists use advanced techniques and high-quality tools to craft curls that are bouncy, long-lasting, and suited to your unique style. Whether you’re looking for soft, natural waves or glamorous, defined curls, our team ensures a personalized result that enhances your beauty and complements your face shape. Experience the transformation with curls that add texture, volume, and elegance to your look.</p>


            <!-- Illustration Image -->
            <div class="service-image">
                <img src="images/haircurling-banner.jpg" alt="Hair curling service image" />
            </div>

            <div class="additional-info">
                <h4>Service Steps</h4>
                <ul>
                    <li>Step 1: Consultation to determine suitable curl style.</li>
                    <li>Step 2: Curling and styling as requested.</li>
                    <li>Step 3: Finishing and post-curling care.</li>
                </ul>
            </div>

            <div class="box-wrapper">
                <h4>Hair Curling Service Price List</h4>
                <table class="price-table">
                    <tr>
                        <th>Service</th>
                        <th>Price (VND)</th>
                    </tr>
                    <tr>
                        <td>Volume Curling</td>
                        <td>500,000</td>
                    </tr>
                    <tr>
                        <td>Beach Waves</td>
                        <td>800,000</td>
                    </tr>
                </table>
            </div>

            <!-- Booking Button -->
            <div class="booking-button">
                <a href="index.jsp?currentPage=bookNow" class="btn-booking">Click here to book</a>
            </div>
        </div>



    </div>
</div>
</div>


</body>
</html>

<script src="view/js/show-content-service.js"></script>
