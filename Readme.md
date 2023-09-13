-- FaaS: Loại điện toán hỗ trợ các chức năng phản hồi sự kiện
    + không cần quản lý cơ sở hạ tầng máy chủ 
    + CÓ TIME tập trung vào việc viết mã
-- AWS Lamba: Nền tảng điện toán serverless [ có khả năng FaaS]. Là dịch vụ điện toán cho phép bạn chạy mã mà không cần cung cấp hay quản lý máy chủ 
-- SQS: Hàng đợi tin nhắn phân tán 
-- AWS Cloud9: môi trường phát triển ứng dụng không máy chủ
-- Môi trường ảo Python: thông dịch python vào 1 thư mục và cài đặt các gói trong thư mục đó [giải quết sự xung đột các phần phụ thuộc]


ssh-keygen -t rsa
    -- lệnh sẽ tạo 1 SHA256 key
    -- key được lưu trong path
        -- /home/ec2-user/.ssh/id_rsa.          [your identification]
        -- /home/ec2-user/.ssh/id_rsa.pub.      [your public key]

    -- cat /home/ec2-user/.ssh/id_rsa.pub
    -- add public key to Setting SSH của Github


-- Tạo 1 repositry [Elastic Container Registry]
-- Tạo 1 IAM
    -- aws configure trong Cloud9


-- cài đặt python3.9
    + curl -O https://www.python.org/ftp/python/3.9.7/+ Python-3.9.7.tgz
    + tar -xzvf Python-3.9.7.tgz
    + cd Python-3.9.7
    + ./configure
    + make
    + sudo make install
    + python3.9 --version


-- Khởi tạo 1 hello wordk đơn giản
    - sam init
        - Template: 1
        - Select Helloword
        - Name: Helloword2023
        - cd Helloword2023
        - sam build
        - sam local invoke || sam local start-api
        - sam deploy --guided
            -- Stack Name: HelloWorldStack2023
            -- Region
            -- Repository: [URL từ Repo tạo trong AWS]

-- Tạo 1 môi trường ảo
    - python3 -m venv ~/.hello
        -> môi trường ảo có tên là hello
        -> dấu [.] làm cho môi trường ảo bị ẩn
-- Sử dụng môi trường ảo
    - source  ~/.hello/bin/activate

-- Tạo bí danh cho môi trường ảo
    - ~/.zshrc hoặc ~/.bashrc
    - alias hello="cd ~/hello && source ~/.hello/bin/activate"   

    - chạy lệnh: hello


-- Khởi tạo 1 ví dụ khác
    - cd abc/abcd
    - python3 -m venv ~/.myvenv
    - source ~/.myvenv/bin/activate
    - python3 -m pip install -r requirements.txt

    - cd abc
    - sam local invoke -e payload.json
    - sam build
    - sam local start-api
    - sam deploy --guided


- Tạo môi trường ảo Python3: 
    - python3 -m venv venv
- Kích hoạt môi trường ảo:
    - source venv/bin/activate
- Nâng cấp pipnếu bạn cần (tùy chọn): 
    - pip install --upgrade pip
- Cài đặt pylint: 
    - pip install pylint
- Cài đặt công cụ định dạng mã black: 
    - pip install black
- Cài đặt thư viện thử nghiệm pytest: 
    - pip install pytest
- Cài đặt trình thông dịch tương tác 
    - ipython: pip install ipython
- Kiểm tra nó bằng cách gõ 
    - ipython



-- Makefile
    -- Khi Makefile được tạo, bạn có thể sử dụng:
        - make install
        - make lint     [kiểm tra cấu trúc syntax file]


-- Tạo kho lưu trữ ECR -> repositories trên aws -> push IMAGE to AWS

-- Kubernetes
    -- Cài đặt kubectl
        -- curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
    -- xác định trong đường dẫn [/usr/local/bin/] đã có kubectl chưa:
        -- which kubectl
        -- sudo mv kubectl /usr/local/bin/  [nếu chưa]
        -- chmod +x /usr/local/bin/kubectl [thêm quyền Excute]
    -- Kiểm tra
        -- kubectl version --client
        -- kubectl version


-- Check syntax Dockerfile
    - hadolint Dockerfile

-- Cài đặt hadolint
    wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64

-- Run docker
    - docker build --tag=app .
    - docker image ls
    - docker run -it app bash
        - ls
        - python app.py
        - exit
    -

-- Thiết lập circle
    - curl -fLSs https://circle.ci/cli | bash
    - sudo !!
    - cd /tmp
    - wget https://github.com/CircleCI-Public/circleci-cli/releases/download/v0.1.28995/circleci-cli_0.1.28995_linux_amd64.tar.gz
    - tar zxvf circ....
    - cd circle.....
    - mv circleci /~
    - cd ~/
    - mv circleci environment
    - cd environment
    - mv circle Devops/project-ml-microservice-kubernetes








