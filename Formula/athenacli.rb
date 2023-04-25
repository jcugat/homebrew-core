class Athenacli < Formula
  include Language::Python::Virtualenv

  desc "CLI tool for AWS Athena service"
  homepage "https://athenacli.readthedocs.io/en/latest/"
  url "https://files.pythonhosted.org/packages/38/1a/d9cd6c68a4a1cd2ce779b163f8cec390ae82c684caa920d0360094886b1f/athenacli-1.6.8.tar.gz"
  sha256 "c7733433f2795d250e3c23b134136fea571ea9868c15f424875cd194eaeb7246"
  license "BSD-3-Clause"
  revision 2

  bottle do
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_ventura:  "35fc26b75389e6f9226d50142d00dff85ab7c193b1c7e2fcd1b4705a4d907b27"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "4fb79de8624212b9c8e65f12ceba227ae8099c2356ba062e834d536537aea67d"
    sha256 cellar: :any_skip_relocation, arm64_big_sur:  "e1877cdff0b94c7db9a2a5d9326ef68523c155d8e7c67032eea47f33a046a348"
    sha256 cellar: :any_skip_relocation, ventura:        "6f24b6c4c3597f2eb6d8e9a5baf099baea9af6f6d263a899d2d54059137dbe9d"
    sha256 cellar: :any_skip_relocation, monterey:       "4166dd3286d8386317db79ed82b1478f2b119afd9e8327366427a6551b6d64be"
    sha256 cellar: :any_skip_relocation, big_sur:        "3ef59aaac822439b960a7f9bcfa7d1db4979dfd2c29a802e86016472197d9c9b"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "5392670155b3e9431e3db9274c4de09a8be4f2111c4c38dd102da032a1800e92"
  end

  depends_on "python-tabulate"
  depends_on "python@3.11"
  depends_on "six"

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/0e/10/2c30f3ad343ccf14fdff24daf1859066a0f9f2f1df30e1d63791cf55a493/boto3-1.26.119.tar.gz"
    sha256 "13a041885068d0bfc2104255f2bcb06a1e0c036bcd009ef018f9953b31c20dde"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/e3/84/614b96cf57bf097b50e77f2bb06dbccd82b878f2d3aba9fdfbf630508eb6/botocore-1.29.119.tar.gz"
    sha256 "cd79c7ecf1888dc982ed7e005515324c0e2d7f8aa9ab03a8ee8ece8a2dd3297c"
  end

  resource "cli-helpers" do
    url "https://files.pythonhosted.org/packages/27/01/6aaa4fc415274ac77372b4d259c234b9f5bfc8d78144c3fda1f3019d4690/cli_helpers-2.3.0.tar.gz"
    sha256 "e7174d003a2b58fd3e31a73fbbc45d5aa513de62cbd42d437f78b9658bd5f967"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/59/87/84326af34517fca8c58418d148f2403df25303e02736832403587318e9e8/click-8.1.3.tar.gz"
    sha256 "7682dc8afb30297001674575ea00d1814d808d6a36af415a82bd481d37ba7b8e"
  end

  resource "configobj" do
    url "https://files.pythonhosted.org/packages/cb/87/17d4c6d634c044ab08b11c0cd2a8a136d103713d438f8792d7be2c5148fb/configobj-5.0.8.tar.gz"
    sha256 "6f704434a07dc4f4dc7c9a745172c1cad449feb548febd9f7fe362629c627a97"
  end

  resource "fsspec" do
    url "https://files.pythonhosted.org/packages/d8/c3/7eb5ace7aac24890fd6f3dbf49d547305237bd4002903f19b524061ce8ae/fsspec-2023.4.0.tar.gz"
    sha256 "bf064186cd8808f0b2f6517273339ba0a0c8fb1b7048991c28bc67f58b8b67cd"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/00/2a/e867e8531cf3e36b41201936b7fa7ba7b5702dbef42922193f05c8976cd6/jmespath-1.0.1.tar.gz"
    sha256 "90261b206d6defd58fdd5e85f478bf633a2901798906be2ad389150c5c60edbe"
  end

  resource "prompt-toolkit" do
    url "https://files.pythonhosted.org/packages/4b/bb/75cdcd356f57d17b295aba121494c2333d26bfff1a837e6199b8b83c415a/prompt_toolkit-3.0.38.tar.gz"
    sha256 "23ac5d50538a9a38c8bde05fecb47d0b403ecd0662857a86f886f798563d5b9b"
  end

  resource "pyathena" do
    url "https://files.pythonhosted.org/packages/31/5c/9ffcae3db22541446ab117eb36d8f539f80cf985294ebf96fe7ed7613182/pyathena-2.25.2.tar.gz"
    sha256 "aebb8254dd7b2a450841ee3552bf443002a2deaed93fae0ae6f4258b5eb2d367"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/15/53/5345177cafa79a49e02c27102019a01ef1682ab170d2138deca47a4c8924/Pygments-2.11.1.tar.gz"
    sha256 "59b895e326f0fb0d733fd28c6839bd18ad0687ba20efc26d4277fd1d30b971f4"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/4c/c4/13b4776ea2d76c115c1d1b84579f3764ee6d57204f6be27119f13a61d0a9/python-dateutil-2.8.2.tar.gz"
    sha256 "0123cacc1627ae19ddf3c27a5de5bd67ee4586fbdd6440d9748f8abb483d3e86"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/e1/eb/e57c93d5cd5edf8c1d124c831ef916601540db70acd96fa21fe60cef1365/s3transfer-0.6.0.tar.gz"
    sha256 "2ed07d3866f523cc561bf4a00fc5535827981b117dd7876f036b0c1aca42c947"
  end

  resource "sqlparse" do
    url "https://files.pythonhosted.org/packages/65/16/10f170ec641ed852611b6c9441b23d10b5702ab5288371feab3d36de2574/sqlparse-0.4.4.tar.gz"
    sha256 "d446183e84b8349fa3061f0fe7f06ca94ba65b426946ffebe6e3e8295332420c"
  end

  resource "tenacity" do
    url "https://files.pythonhosted.org/packages/d3/f0/6ccd8854f4421ce1f227caf3421d9be2979aa046939268c9300030c0d250/tenacity-8.2.2.tar.gz"
    sha256 "43af037822bd0029025877f3b2d97cc4d7bb0c2991000a3d59d71517c5c969e0"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/21/79/6372d8c0d0641b4072889f3ff84f279b738cd8595b64c8e0496d4e848122/urllib3-1.26.15.tar.gz"
    sha256 "8a388717b9476f934a21484e8c8e61875ab60644d29b9b39e11e4b9dc1c6b305"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/5e/5f/1e4bd82a9cc1f17b2c2361a2d876d4c38973a997003ba5eb400e8a932b6c/wcwidth-0.2.6.tar.gz"
    sha256 "a5220780a404dbe3353789870978e472cfe477761f06ee55077256e509b156d0"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    init_run_output = shell_output("#{bin}/athenacli 2>&1", 1)
    assert_match "Welcome to athenacli!", init_run_output
    assert_match "we generated a default config file for you", init_run_output

    regular_run_output = shell_output("#{bin}/athenacli 2>&1", 1)
    assert_match "`s3_staging_dir` or `work_group` not found", regular_run_output
  end
end
