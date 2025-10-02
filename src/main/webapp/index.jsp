<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Portfolio - Data Engineer</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            padding: 20px;
        }

        .container {
            max-width: 900px;
            margin: 0 auto;
            background: rgba(255, 255, 255, 0.95);
            border-radius: 20px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
            overflow: hidden;
            animation: fadeIn 0.8s ease-in;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .header {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            padding: 40px;
            text-align: center;
            color: white;
        }

        .profile-img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            border: 5px solid white;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
            object-fit: cover;
            margin-bottom: 20px;
            transition: transform 0.3s ease;
        }

        .profile-img:hover {
            transform: scale(1.05);
        }

        .header h1 {
            font-size: 2.5em;
            margin-bottom: 10px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
        }

        .header .subtitle {
            font-size: 1.2em;
            opacity: 0.9;
        }

        .content {
            padding: 40px;
        }

        .section {
            margin-bottom: 40px;
            animation: slideIn 0.6s ease-out;
        }

        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateX(-20px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }

        .section-title {
            font-size: 1.8em;
            color: #667eea;
            margin-bottom: 20px;
            padding-bottom: 10px;
            border-bottom: 3px solid #667eea;
            display: inline-block;
        }

        .about-text {
            font-size: 1.1em;
            line-height: 1.8;
            color: #333;
            background: linear-gradient(to right, #f8f9fa, #e9ecef);
            padding: 20px;
            border-radius: 10px;
            border-left: 4px solid #667eea;
        }

        .education {
            font-size: 1.1em;
            color: #555;
            padding: 15px;
            background: #f8f9fa;
            border-radius: 8px;
            margin-top: 10px;
        }

        .github-link {
            display: inline-flex;
            align-items: center;
            gap: 10px;
            padding: 12px 25px;
            background: #24292e;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            transition: all 0.3s ease;
            font-size: 1.1em;
        }

        .github-link:hover {
            background: #000;
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
        }

        .github-link::before {
            content: "⚡";
            font-size: 1.3em;
        }

        .assignments {
            display: grid;
            gap: 20px;
        }

        .week-card {
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
        }

        .week-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
        }

        .week-title {
            font-size: 1.4em;
            color: #667eea;
            margin-bottom: 15px;
            font-weight: bold;
        }

        .assignment-links {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .assignment-link {
            display: inline-block;
            padding: 10px 20px;
            background: white;
            color: #667eea;
            text-decoration: none;
            border-radius: 6px;
            transition: all 0.3s ease;
            border: 2px solid #667eea;
            font-weight: 500;
        }

        .assignment-link:hover {
            background: #667eea;
            color: white;
            transform: translateX(5px);
        }

        .footer {
            text-align: center;
            padding: 30px;
            background: #f8f9fa;
            color: #666;
            font-size: 0.9em;
        }

        @media (max-width: 768px) {
            .header h1 {
                font-size: 1.8em;
            }
            
            .content {
                padding: 20px;
            }
            
            .section-title {
                font-size: 1.4em;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <img src="${pageContext.request.contextPath}/img/me.jpg" alt="Profile Picture" class="profile-img">
            <h1>LƯƠNG NGỌC HUY</h1>
            <p class="subtitle">personal website</p>
        </div>

        <div class="content">
            <div class="section">
                <h2 class="section-title">📋 About Me</h2>
                <p class="about-text">
                	<i>Lương Ngọc Huy</i>
                	<br>
                    Excited about the opportunity to work as a Data Engineer and apply technical skills to build efficient data solutions.
                </p>
                <div class="education">
                    🎓 <strong>HCMC University of Technology and Education</strong>
                </div>
            </div>

            <div class="section">
                <h2 class="section-title">💻 GitHub</h2>
                <a href="https://github.com/luongngochuy1903" target="_blank" class="github-link">
                    View My GitHub Profile
                </a>
            </div>

            <div class="section">
                <h2 class="section-title">📚 Weekly Assignments</h2>
                <div class="assignments">
                    <div class="week-card">
                        <div class="week-title">📖 Tuần 1</div>
                        <div class="assignment-links">
                            <a href="https://github.com/luongngochuy1903/WebAppAssignment" target="_blank" class="assignment-link">
                                → View Assignment Week 1
                            </a>
                        </div>
                    </div>

                    <div class="week-card">
                        <div class="week-title">📖 Tuần 2</div>
                        <div class="assignment-links">
                            <a href="https://assignmentweek2.onrender.com/survey.html" target="_blank" class="assignment-link">
                                → View Assignment Week 2
                            </a>
                        </div>
                    </div>

                    <div class="week-card">
                        <div class="week-title">📖 Tuần 3</div>
                        <div class="assignment-links">
                            <a href="https://assignmentweek4b8.onrender.com" target="_blank" class="assignment-link">
                                → Assignment 3 - Part 1
                            </a>
                            <a href="https://assignmentweek4b91.onrender.com/" target="_blank" class="assignment-link">
                                → Assignment 3 - Part 2
                            </a>
                            <a href="https://assignmentweek3.onrender.com/" target="_blank" class="assignment-link">
                                → Assignment 3 - Part 3
                            </a>
                        </div>
                    </div>

                    <div class="week-card">
                        <div class="week-title">📖 Tuần 4</div>
                        <div class="assignment-links">
                            <a href="https://assignmentweek4b734.onrender.com/" target="_blank" class="assignment-link">
                                → Assignment 4 - Part 1
                            </a>
                            <a href="https://assignmentweek4-qtis.onrender.com/" target="_blank" class="assignment-link">
                                → Assignment 4 - Part 2
                            </a>
                        </div>
                    </div>

                    <div class="week-card">
                        <div class="week-title">📖 Tuần 5</div>
                        <div class="assignment-links">
                            <a href="https://assignmentweek4b71.onrender.com/" target="_blank" class="assignment-link">
                                → Assignment 5 - Part 1
                            </a>
                            <a href="https://assignmentweek4b72.onrender.com/" target="_blank" class="assignment-link">
                                → Assignment 5 - Part 2
                            </a>
                        </div>
                    </div>

                    <div class="week-card">
                        <div class="week-title">📖 Tuần 6</div>
                        <div class="assignment-links">
                            <a href="https://assignmentweek7b121.onrender.com/" target="_blank" class="assignment-link">
                                → View Assignment Week 6
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="footer">
            <p>© 2025 Data Engineer Portfolio</p>
        </div>
    </div>
</body>
</html>