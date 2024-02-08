use cairo_verifier::{
    stark::StarkWitness,
    table_commitment::table_commitment::{TableCommitmentWitness, TableDecommitment},
    vector_commitment::vector_commitment::VectorCommitmentWitness, tests::stone_proof_fibonacci,
};

fn get() -> StarkWitness {
    return StarkWitness {
        traces_decommitment: stone_proof_fibonacci::traces::decommitment::get(),
        traces_witness: stone_proof_fibonacci::traces::witness::get(),
        composition_decommitment: TableDecommitment {
            values: array![
                0x7d70f9e31a694048895b0e7e55074ed1cfde491c9539e709bf3aed247a9af25,
                0x5e26502ee71165416146bcc268e03d509fc62d0d38d031c7aeaac22cb72f824,
                0x2ed513ab0a954ef4656bda97a25004ab774b866895697aed479910dc452e1ef,
                0x1913aaa6759648b4a1a43967bea141acb7c6ba929f6f5500766d5a2ec8d460d,
                0x17c261ba9c0de9bcf625cf4c0ec952874e05cc9dcfcc1462e77d05b60bad017,
                0x28be8e0eaf161b053116c3d566b2ff59cc3f6b7a024bece52957b59fd51999a,
                0x2593371d573ba6faff9eb1c589f1e51053ed1b1d970ffd30313950d7aeaa63,
                0x59c8a7f455cf4e0ba8aedb70b0f53cb192db7c35504f0bf2c7e0b56fe3be1fb,
                0x4b92b7ebe05038d31e1ec38ba5334568787253287c8d9a1a7b90b4e5767c006,
                0x6b83ef11a556a581c9819dea0759c5adf525743a987620d8a01c8781b4b06b6,
                0x35d98d88924e9c4e2b09d78b41ade0c346c0fe1b249ca162b55238ad00a3754,
                0x6a591e4de8f3f51f7bd88026d77134e8296a4f836cac857f30df2eff9057219,
                0x41625dc9830ec9c33d1dc02e725c698d61dd43912f3fcc02261a4aadeaba6ca,
                0x264bfd09e6b955c4e43a3e0ec9d2d3baf1dc2179a26d04f05a22e669342edda,
                0x67189f4dd25a6b76696d709ae72ec37a3697f3e5a2f7581c954955e3140d78a,
                0x7ba44a241a837d5b8c80b2115b214d1caf92b5660e9560967df582c2667af2,
                0x7cb7b72b2da943aa771621ae46a45ba57e5dbd754155e3f7bf2568d47046987,
                0x504dd982f7ccf36fb78686cf91359a68b8791569fbadea9f4b9c2357a87d1ac,
                0x315cee9631725b231265881dcbbb2b6e1a696f8e5013d2812607810621bde76,
                0x84a581c13c327abac8f624bcab2fb37d669a080ca956e663a978924f6471ef,
                0x50ad0e3b00768a9ab39954a1c1e682119693fe7a6a6794fbb75408009a389f5,
                0x5c8f2fe65d5bdc7c78817af0db29ae2c16dd36436560621ad2fc32cb973384,
                0x56661428dddde60c6f61c94461e845887554a2e357efe1dcc63429345ce95f,
                0x7974f33232cb7ca8fbca054d7dcba201d29a31b8aa84b523cf2f2c4095552e4,
                0x35096c2712dde63c9dd6ac824893cddda573e6a04e4e011121ae4300005b8de,
                0xe66a05418f8a9fa4bf62cd18a8c36769c54743c1d0fcafa9f9a0d9f932c4d,
                0x437ae9f4d2574c123c1a476a79a33da8e772e8adf2bfd6c03853ac463fb7d1a,
                0x1ffb3aea4db8d6a5378fb7f64b6b3392e68f029886ba9b0d4b5d5f60a72091f,
                0x61e90a61cffd6cf675659ee419852c1198036a6994bbf3dc8016a9c93699861,
                0x6967db9490a594915a00d7e587a785183fee6cb19eea386ba4955013a6ef90,
                0x7505104354075fbdca04792d02a1642f4d5542603a6b1bef715acb17da0a778,
                0x42f2e931d2c12669b23721937419c10b255d61d7dcd7be2d47776239fb4af27,
                0x5e98d3cb5b566817a6ce84667823ac57ce63cfc96690ec8469db9ad529c6fcf,
                0x189438e017af30b3146b84f2ed0cfa1c6d0ec0b67c1b6aaa5be0148841488cc,
                0x29f2c6eb5bd093c9b6260c1070d21c6f96568681ecbd2a8e593fe88811c5cb3,
                0x1003d9936322ad4c6218fe18d906b9e6b70c2146685c27fbf7488644a65c0bd,
            ]
                .span()
        },
        composition_witness: TableCommitmentWitness {
            vector: VectorCommitmentWitness {
                authentications: array![
                    0xfbefd6f9b967b98df01050198c1f75daec4a5682,
                    0xfed88642424d3168fecb34e0042548cac7369a21,
                    0x72b6a038f75efd29d096d1751bf0744b2179dab5,
                    0x2ecd6f022527e2a1cae372b512e260ca9d7d4225,
                    0x109bddc66acc967199e877d18cb383b7e6f20c19,
                    0x4c37dcd90c9aee2919f76b9c15b236cb1ca19a5,
                    0x8316eaf590215f97321cedbc5996a1870ac87bf,
                    0x10a1b3cd386edb01e45bc3e280f21eb97d464675,
                    0xeb79bea6c76f6c2d3e5484b1b673621d7e45878b,
                    0x7bb2aaa298e69c2ba373551d56d3f7a6e1b83d9f,
                    0x72aea01b3139d25b652723f4915e602e152b48da,
                    0x51004f13f7d208ce8eed3c6fc0706a8302908f23,
                    0xca8f75309d6182a84357052b985b7deba515cc0c,
                    0x1d2aae5c37c34fca65904fff05a562ed4b4ce0c5,
                    0x6689f228e13b4e9c4d261608a1506a3bdc342ece,
                    0x454eaa8a3692f9b0a72ae771ed92fb7bb50dce87,
                    0x837f7b55040e9da06af621d3f7cf2cf1f9c0ed28,
                    0x3358dc7048c832aecb6f993aaf70913091bfdccd,
                    0x2c9b8cb485efd4cf5157cd4deebfd97b0deecb769503a1c7ebac19dcd613d91,
                    0x7536b414a4b6598d9acaffd10cf0d2e264b2980e12fe68a2d0d46dba3801c7e,
                    0x22ef0175e0fb493573698fa098546975323d233d79168cc77af0f2ecf7ab150,
                    0x2c46cb36be8476a4623b1766044b37209adee1b9b7cfe4fb30b8003a0824795,
                    0x123e863197b89985dd2a5545de3543da3d984da39ad289951e0b1ae3569d133,
                    0x2ea56c0b72c11f2cc00dd90bc068ae18815e42dec5ff03f94567eeda988af52,
                    0x46ab27f65da0e318fe6850e66a0aab39603dba03ee806a1e850251fed686e03,
                    0x29c626adb1644be39a05eb0d41d0d5d3271a5a0e13112f52ff4fa43afa660dd,
                    0x669ee50bd2c17c007ab15b2993eecb84eee30f170cdbfc57009766a17a46f23,
                    0x5d1e71c2117c1910c87441bd2e00e12c1cf57dcd250a600548cf6abbeef3d38,
                    0xb321e21dc317fb933d24e607c2a56aeff520d2db592dd9611c40acf4ad19d2,
                    0x66f19ddfb2edb1ca0441f0f9e772fa889ceabec0b276a0405e3f6322bea6180,
                    0x3f083d1845979f2eb6e6ce71d685d0643ca767572aae1c555f65651b97ba038,
                    0x760611b497be73a73b72b680299ba0fbda17317d2208a1b9037718f0b7b833a,
                    0x40b6d0ff7abb2745a5804f3fc627c90e3ed9f3ebc13b63a67dcc2268833f5d6,
                    0x24d00ea6e750f94356cde9c43bd762ae1d5551278fa4f34c0fb2ff054e8dc89,
                    0x49c4dbba3a61d843622a8c3811367d15541279863e65fe3a799f548cb040d60,
                    0x2367ba4595a16c13eec3ba40f33a87d521bc2ab57c742b9864d32bd5d130082,
                    0x3e6bd79e198a71944daaeb3559c39482f34c10224344bd30b2d8684503b1aa6,
                    0x76bd7f5ddf043762d55d9f0293a4d443bcb49e09880c90d4ffae28f59d8fa80,
                    0x2491bd5fb9e0a3cdae9e2978135dccbb52792e7f12795ecb52c9f4c467de12,
                    0x231c9c384daa4b5ed67b897351281d889911c04a215d31f0b573cf1497086a9,
                    0x28391d6736a3457f21c493f0ab67f4c9a34484b7a56ad769eb89b53e1635bd5,
                    0x1abe2c7707b72778f86f4d53b3a018d8992948ca9ad4415f964dbd061a71017,
                    0x74f7df54181b356a422ed44025c5b2efa1d769ffe06e972f0ea66f443ca125b,
                    0xd4d636a4289db9c910b1a6fa9b3cc3628cd1ce5e6f00e1bd76c3f4a3dc9036,
                    0x1405f4165cdcce011a4f71f3af2ea0da8785252bcfe5dfddc6864da049bcf90,
                    0x72a93a7faf953cb7ce80cff6d171aef36fd5a761dfed16b1efd0587f32d0643,
                    0x425ec83d10d21b7b9b9be745cd6e559218db47852514e4074079b994a4ec6e1,
                    0x483a576cafc47e7a3d3340be43f6b3bc5e1e7af50a2002fe67254402704be94,
                    0x138b9fe93c7f44876ae5208033d6e8b84067c4f23058c904e03d6ee881961c5,
                    0x1008a153d62e315f10fc0cd356f15836a80e22a5ebad165b329286920b03cba,
                    0x26ccad7fbf54a0d97079b57b1efb6bed1c2f46c9e153d97852857d46dc98be9,
                    0x4495e46a2911e447c4b562028d69112a55c2a6bede0b85f2f959c874d317913,
                    0x1d1ae53a845058e501e201e9e20e63bf05974f63dd7cc0613552a41db8e67f8,
                    0x4dde7b7cb86beb059ef7d781e55f288f5a327408ec54b76ec431f70c790e0bb,
                    0x5ea0df0fdccf92148f4ad7f0b70dbe03f7c1d686b992349209964a7f81203ed,
                    0x564bc1018e60482cb6fda3bee3ff05d6ad5ba0e30eec5b4841145c82d09a5dc,
                    0x4683c70dda900b3fd426aad6b7dfde1bba54ae954e38380c6dea4e7856ea940,
                    0x6a925659235f977ffdba42d90fa5f3d776ca26965f0e0e9108920b6ac2f6f57,
                    0x29e482e14c04247406a87d7483a0a524ba1ae5a4846f919104ef2c29dc08705,
                    0x65039eb6a90427abcd7bf05e28fb31e20bd4a91f2272d960c23894e708e397f,
                    0x64c72df322b35b329816e15e960be6b49de6af052597a5cda376737335608d1,
                    0x3ffece4a1dd8c94b52c86f4f6bea63a7ebc28feb365a2206ed6dbbfd206306c,
                    0xf113a5c418f2c8f8ba37d60b2f9e3637e71e44e8afaee36ec88cab6fd7e12a,
                    0x4710904cc3390861e50734eed6d296ffb87328fe7c2a3cfdcca318a020fff6,
                    0x28f8df989b8459c0e35e503ff1f286960d602aa303b056b73be2447ad321bda,
                    0x3d3ae90691147265af54a84df3da9ce3ab8f5ba69a2c828c6562cdebda2c199,
                    0x2d169ce81beb2b5799b0295898e51bc8c6b976a27e5ae20a6a95bcf6d4422da,
                    0x7b1ffaf751e683840be069969d29295dd18e0d8c2a419ae5db6c8219d9f0777,
                    0x3b2517a13771470a69991fa96c453d5933837b43cb975e995f6ef4a6de1d4fc,
                    0x1b044b26abc36db8ff1c069f2ba8b334c225dfa7ad65a3676f66f7d03952e92,
                    0x2376a049a284d63b7d99357e3ef37e6e0d47c15519ce941e41a2bcb5e6e50d9,
                    0x593a295446f992c0343528b902ca02ca6e9749bab06a923d3aea704b0c12f17,
                    0xabb23c147eced60a10b6dbf876a78fb8f4e7e45574fd171d410f3deb409abf,
                    0x38fb8a43934a5348a2dfa47cd2b18ea53ad616f5939275bd1171229b0ef909,
                    0x718779e836423ce5884857aa054b637b16fc9271729cf0ad046e03770f6971b,
                    0x50845fd5511777297162ef262e6e6464f538403f804bc6d1bc41ef1b019150,
                    0x662a4b7b2ce3024c7a1ee40c75a42ac1d8e294aa0bfd4fd26707658dbe34309,
                    0x599c5c79f65258a529f33b4fba8d4d1556bc86f6b78bbdc5274d06e49b4c18a,
                    0x712aa9ccd4d1ac56c0551ae8bf900e4986376987c992320368d5c2a36a94ed8,
                    0x43ab2d5817b5ac1ba20cd03573635a35865a3f35058b0f6fc82a14762f73e20,
                    0x68af13ebd5baa8fdb96c3b4b7625dc11aa4c8d073b0d6836b115748e599f7f9,
                    0x46ea92b35ab5ea7cdf021e5d9a9cf261d82349b0692a4eb9693b530485a882a,
                    0x7a4b77b536132734d735310082cbbed7dab6b16164f06e757ee79eeb8e8404,
                    0x13f93f76b58a15f116511e9376b84cc4ec169e7fa4293d2278f1f6939552a62,
                    0x1f2ee8b6ff35d403c2432bc5a41bb9acada207e1f4c3f5e3b07219cccd83aa7,
                    0xb3d2eecbd911ffefa6085204b46eea26c1b681e7bfe7010bec42c39f3585f,
                    0x4b36f65527c4bdcc0b1a9c821e31312d0eb48129c40631d3abe42b8dfd15d04,
                    0x3a0db1af5c8f9d306e3e0fdf7f69a12337811fa67d6bbf598d8363cc5d5b1ee,
                    0x381dcf41fc3241edb2c90907ca6ac353623cf9bd06f9823b93cd57d53f0fb60,
                    0x6b9d4d56ac6003af429365402b0063c3c82e100e133e3fb2a935c5dacbba718,
                    0x66d8825b9733759c6103d382b77d77e44ee5871d3e6f0128b6ee47cbe820af9,
                    0x1d0ed6fc80854093de0edc8c27e9c07b44b89fcc8ac9256acab2e05de117b7b,
                    0x4c0b7696c7cf4a4d2751590d6ed96513c8b80f1229f57c5e017c3e2a895ff00,
                    0x12fe3470fad7d7d2fa611b3958bbd7744bccffe2d0ed4471af3c44cada7cca6,
                    0x512ed69eaec09b5dd4a0d73ccb6976fdff9a4bc4b6d5f2f49926878ec7b451a,
                    0xb37718222f0728b52f3855ce8bd25581c171fcb140ea0b365ec78cf7d6fa2c,
                    0x1fd4b97dc1236eb61fcdaa8abf2da197a86cb845facc03f41c958c0ca4ecc02,
                    0x48b1b84b09b63e1c890a5fee416fca991a15835c47dce9c7d72deb99dad89cc,
                    0x2728f248c6664ec0fc306262b3282640127a0906890badffeb3bb565590e29d,
                    0x5beb148a665cb5033b89a17826af87a54f7d54854375372aab379be34692a6a,
                    0x5e98bf34f53b27f7578c4e4ed1f59c9044d2c24083dbabec9da77b4c7a0e28d,
                    0x3da30477033a82502d15fbcc77060e0a4c58988556b835bfb9699baf43c955,
                    0x590752842c483b64a507e1e11b8895af40b24d04e965f5f19eaf3f2cbc93484,
                    0x5c67195ecb58f1a85a24349f8e433c001fd77ff39c110a4f1b5e4242bcbba42,
                    0x1df745a3dea1a2fc54674cf7e11f842fd78ef39975c5f0ef34e655b7abc5c3c,
                    0x54a8acd2d4a61e965065608f9c755710c3d520456f7ce48a5e8e0b4d7a14ab5,
                    0x5a9803a1b913460e275d6b4c78f8be27928687969d967970d286d1779eba4b2,
                    0x439c8562cbc44ee80c6396c76beb264fd240d48d3299f4210262ae638d7a176,
                    0x53973de9b15a76e8b65d19471fd17000e2732cdeb993fdcc20938a869c252d5,
                    0x3daef1e5172bab6d0382dd6f31f3545e26c586532e255ecfb90927a2f19cbea,
                    0x65b53f048df3c977d6665cc38ba71f3280a919da5110c63d619a106f0c20c80,
                    0x222864af387c0a082c47589818b8fb5eb1166ba4c5dc8f9a0691ebc9d3264c5,
                    0x197cc0952139dd16410fcd49d9df4cf8bf58a013eeefa0e43d5f403f89cacea,
                    0x627e8dc78c0603584b700dcb2489aee7b103d7682978a2db587829626887a36,
                    0x3ec411b276b4abb438695520b7b37def1f39a837b3dfee9efa349a5c1ab4c4,
                    0x3187b20723b52c9b88609db8c3da7fe012ccaf10139633e27e4f1fe709bb503,
                    0x71de36249e1cabe452984687ffd4ebcc429a772a7ebc678b653f6d7d0ddb57b,
                    0x47f9ba9ababc08f4b2f532cb292aaa26f43e2ebe652d9049b288463d913308a,
                    0x5c29ee6b0e5e956a9c229c11aa2f037a9a8e77209ccf5b21758c26b80b713e2,
                    0x99c9bb4f0d98491a2366e1928075d2af1472d2073ac08b11b2fe3c2244b136,
                    0x7c7077c1c96d2f68f0e5e5ab4aa82912f8a76f71a33963be120746b2826cf5f,
                    0x35c18489f367ee7bc575d3a44ce5235ba4d88c26cf60bfe5322c58c09c3cf82,
                    0x6c6d33e0a47e42970d1a67a654c7478380d8edb0f326accbd7b2b71cdd156dc,
                    0x407e7f13cadd16fa492137d5c0346fc55ac53f3a90a4dcb8c6e2bb598bbe580,
                    0x7322e03d24a7e9a0efa149cd7aa1db4708bea8532b5b549bff4338194177b68,
                    0x416f5036824da90febd2fc18e6767f10f0f76d211490e9ceaf7044ecc019730,
                    0x5b29c79f7fafc3ccec12cf54d9a6f0947c58f6a590cb7f609ca349444fd5d4f,
                    0x37648145fc91bf0dd3fb635cd6c13686596e0fe74b49f2b77ecb9b521a52267,
                    0x49f89e82f754d6ea7c16eefc4ec513ebc9f8196fefe68dd9b3a679edb2b0245,
                    0x40e0c058467437beaf4f6c0f8b609c31a276468fb7f026a6cac874fa9d0588a,
                    0x48abfaad7f778619d4aed79783ebab61dfa4af9fa5d4a3df7e5a8fd52b3a6e3,
                    0x77d7135047c6383b13dcb75a7cabf8158fb691826c8e7817428831f1bb3e882,
                    0x76ca9dd0e88098f294b170012dad388a997fd1a96f9d13bc40a1b55faece9ed,
                    0x392ecc43602d14a9d103d6a152bf99da9d95be0e15b21ce3bfaaf0480e22420,
                    0x54e916cf832b5dba9ade299f20bb2185ab7bbdb4dc54d910ac119464d53154d,
                    0x38d1a08a0c76a8c4895487bb7fcb78a2d7071f457459f821a89208ce5377a55,
                    0x1ac1eaba1455eb93ce6f2b1b9af04e2e2eb1b3c0dae2438cf8168e6013c0081,
                    0x4c4bb0dc23c2381e69253e094b838c687e449735b77fc13cf98a46e88eafc75,
                    0x341e6c14df4434ad02d86b94a72145023ea3d5d8b494ca53fc016704e29c3fa,
                    0x5f03c7800a93a94c67066f6dae7db9b1fd9a9ab1b7f9706c79c5c3719d10b7a,
                    0x721cc78408d734ef22a5097744c13560e4d6f6ab2c7fe3b6ed144e04330d45e,
                    0x42c396301781a50976f0bb9e2265fba123804a3acf19d291c03f381f1be0601,
                    0x6f47e87b1b29e64580b74816cbe2244019f5e2ed2998efb1f3e3df918006ec4,
                    0x4dd21179b5469853ac00527e86dc96929d3ca8cd572bded7ef41b5ac0d6498c,
                    0x7dfc23234f32436a663b0d4612397e729094859892ec4abec65eed61f973d9d,
                    0x208b3111bb6a9371957eb813f77ce877f2042d6c5d66370db53096bb5f73f1e,
                    0x7ed06ec30125e8d79a351e55181a170ae8095cc8504fc6c5f8aca6fab493cab,
                    0x15886e751663d2fd09591f9222e0ec780300685a074610e854f91ce74a7a82,
                    0x5f7d4ea221c79ae00dc33d0cd824e7162e7df016b4c127054c6f567fe8e2602,
                    0x3d61121fa82b3f02b9c0015655bd024c9a59a8fa55a31a3a9414977215f9ac4,
                    0x6e7596bea348181c34e9a6e00068caf16f0c447172207e1447a5c4c52c5fe49,
                    0x1348554bcb8620773edc01eb83f11ec1b270ecfde892935276ecf14685a9265,
                    0x1abfd52e3b5b76008aa3e39d768e49e9967ddcca70565f58a6a933f87abf2a4,
                    0x241f2cac6f5f43dce6ac67c0dc752e47679c686c273ed0670a2269354a6e51b,
                    0x6b8697e66407fb8e72a5c1b3f1f0b7d1eec729a7ada529ea8e8f8b28567a526,
                    0x5aacbd80b7832d9eb7f5d1fe7d31cbdcbbf32f96f5a6691e9c6e6e7516d27af,
                    0xc7151d1825df59082b9c8331f81dbf7ba8b5f096a4beac2ea0de2339a5d4e6,
                    0x579940adc3b42dbc48778ce29fcbe96f0cc78a4185d85b60273b95e54612862,
                    0x4d30379bfecd51aafd0d058121993c311ad9e723357042a45b90e8ed9234f49,
                    0x3eb0f9238e271c79661ba1e8b5f2d6c760c9d4d12e1c37661215fcbcfb910fa,
                    0x4730176c0f7d8571bfef8a73a9e6da3f1a46b1dd7d042fff535680eed0f4799,
                    0x28489922c312c1d2d64468a08a66e081237d9e641fd71dc256969df380c2542,
                    0x29e64d551408ede9ccf136bf00b76d08c80d248bc947f8ba399c0616e595e6d,
                    0x1102f21a6dad7d9149ca317d663a163761e98b5923ff66a340a83caa2e1ca39,
                    0x63a5590c85a4345fc305c06a3dbd79db130bbcdd006790335f7f7a1f9cbf99c,
                    0x3c0d313c1fd910b9293fb11dcdbc61003aceb89f2f720c3bc1f32e3571b97b5,
                    0x2e90eddd64e0c7e4aa87425369e1c426cf5521b80220ac4cb3e5068d9515cf5,
                    0x7a25d6194af7ba0e45bd74bd64559ef3a8d639a4773730ec4fcea52e77b3e64,
                    0x5cb08733cf6505dd28d40bb07947895c7249f2fd9355426f7f55ae6960982c3,
                    0xc8f60579f6ec66ecda5dd65dba38c7087afe41f78a357b76c773554663c64b,
                    0x302a9dcef212e1125f2d57aced1d2b24045144154f4848410e4ed384aa2d9a1,
                    0x3c91862f2e15d1a52e62440c64c18cb60a8fef4412c78f99ff067e62dc3b717,
                    0x7eef312d455a81179b0a205188014e61f70118f5a4397b9aa040e76e62ed077,
                    0x6b5390ea07820d982c6302e68fc6bd04b11bca50accbb3eff6f98dd6b06a2a,
                    0xe2016de3928157b4d7bbedbafe8efc53ab35cf1152aefdce451675e80cbb55,
                    0x3e3a658f9b9f836641d8c1a9a425c813271ec9f16ce21f6d4da8f4c54992733,
                    0x5ea0f28c61ceea8a3863e6f5686c318c87ce55732bbeea8a7b432ba144e770c,
                    0x256c432f53b5d2a6a2cf731f05185d9300c4dc10713b92e2e7be560b5ffd3ec,
                    0x7895feecf839c6c1e67d25d27ccff02493e6d3839154b18013db17d6f3d8fdb,
                    0x6173f10c7fed46d8e249e3b0ca9ca72f335f3c790de1977e7f590d4db3669e1,
                    0x1202279a91469dc27caf3415e6b259571bb31079901c1b48dc0e371a98f054a,
                    0x592a7dd40aee48875c5fe2c4af49a264a602c0c312e5d962f142829078734e3,
                    0x6e0e46d921452051a1ad93fc0ef5a21a049c48b57f9c664f3e0f317a3c95374,
                    0x66117a509adeda332b30527df07dd9e5b9c8e78c990823c79a02fcaeeb2b489,
                    0x4dd13b944195dd4a3de88ad265879f9fc15a826d04a0c04fad8e7e014cb6fe0,
                    0xfdee3ac080a23730975a6f24e0382caef1324a49eaaef662af3c49516a2649,
                    0x3522a8ea00a6f4d31739f9387b415e404ceb397bbd983573f342e7de1494ddd,
                    0xcaca10de89e4268ad8cd1285b63dfa9daabadad79dadafcc5f5725f52f8e0c,
                    0x75597a0aeca837d6a390d18c98776ebe9e9393fc67291581601a34b8476e52b,
                    0x12cd857f5757590bdf8f8c9e74bf1d6d0ac611d8f8da50a8af0c79eebe6e62,
                    0x78ff13c68f1511ccdd186b6cb64b078b2b056c1617021d7afc490b17b1dd9dc,
                    0x2190bc0030f45b5efbe55a02e2b9bd1dc4a5a59e15fa48657af7441ea3d38ef,
                    0x65900e1f19dfc0edc567902b5df8bd9f38052e83ee39644721f009695a10bf1,
                    0x4e0fddd78fe68f6194cc78fc7a741aac19f4556677b66d56fdad7158af53ba5,
                    0x37e802bf37139716da414284cc220258b2a7d49527fecce633fa13665a5dbc5,
                    0x1eef74e59b8ca0deb7d84cccc7bf1e56235bf9455e656c8346464dd30ecf892,
                    0x7932b9f55770e0a28f0a89ff4d5f41b7a3a4856e369b015d007d7e51b5b4259,
                    0x2678db966a62eed949f56cf9d24435a8137eaa397bf81f12adc7b016917c7ca,
                    0x4e371fd33187fabc6df96e12638e343a25eac5cfc0af9cec00470143ac919c6,
                    0x26a542aba1113f4025f66cd7023d2ffcc0aa259cb54ed096739d0caededa1a8,
                    0x3d6fb4e1d12780c0e94208b2787a444f82546d3660acb4ffd670601bcfcc504,
                    0x649c856827298e0b29971d95af294a5692d268e62911a3b11f6216297df3bae,
                    0x7db76f4eba56ad34c122bf12e581ef2fac8cfe23466ccec544c14a81f7ab9f6,
                    0x10b5ce2399bb31becdb524fa20e3f42f21efc6aa62cfbd9f878ee366898cb04,
                    0x44dc8615daada859c342e78af4a3d6861a66e566a1fb7e6922737c38c170d60,
                    0x43d57ab3559c3154d42033384b94ced0c26f9b24e0692e2f2d41fbe0a181440,
                    0x286dcd76b2c25e14ef33bc3703ac06ebec7e3862a2e39385385ae0f596f4715,
                    0x69b5bc98e32345f945bf8a57d432f491a3e4025b466e9a795eace35139d0a92,
                    0x634a594654607fc5fba3a25ad1535801e6332ec2370ecfc4982c918cbd37f09,
                    0x47830a479a740fda217e61736261a8c217a62e1a4b5fda04f8117d9477cd184,
                    0x5e8fe412a80ae067f64e9293c05984505e4becc3cc737f4e2939eeddeafcd37,
                    0x63c100605db0b761bc8fc23a3f5c234491c41dc230f8a5dcf41a0fe5c7a5fd7,
                    0x6edb953f3d09aa2d668627514f5cb647d5df8ecbb093081616d239b725c470c,
                    0x65809ce427422d4af66c95aaaad4c63a2a1ed4f5b54190f355c950392eff09a,
                    0x72d94c77022cad3c9953af9dfe0c05829fd805109eb1cde31cf0efe6ee89b51,
                    0x93e19e572f1c29356c41533daa9ce67e24f5b79d9ff50d56f09fc3c62b0a58,
                    0x5e4f18ec009767a42b28bb5fcfa5ff4588f828d973854765298539a48d4d54,
                    0x5b6351792e22714b2b1206236bc654040b8179656c428ed48a9ada3009a9ce5,
                    0x6d1cb56e76f3c4003fad65b67fa128e6febeb009c85fdada5ab54644e6a76af,
                    0x5d6d180957362a55c0dd555be875a9239abe5ae27907c317798b2bc2b20108e,
                    0x5f9777097434290c13e4fc428739d371d94fe0d7e61de0f58796a0176b75bca,
                    0xdb90422e88410884a073818e0948643ed3821c6089f12ecf42702ac1d13e99,
                    0x25ca365e7f011646315cb6f77f58f01f8a6ce8582a4ddf4355d52bd44d8d55c,
                    0x499755aba875554bff5784901753998939db1349e3c1e40450e5c62f4651809,
                    0x27d6a8ab364ea8044b04c1fb66644509df7d2acf00a7f967170520dfba4a8be,
                    0x2aacbba60e6e2591b65a9164cd69d33f79ee39af5db29bd5991d1948cbfb971,
                    0x4e56dfcbd0396feb3580c6703f09269ebb4e2d5074b6adad618fa4b9895293f,
                    0xb8a3247fecb4a180b106caf25f4981287dbde2219a30a91868ee07dbf188a6,
                    0x7387d21bf8d21411d6a21a9820286eeed8286eab329437d98507d9ae3d48ff7,
                    0x4877a9e675f3e33da1c96c40f7b314ce1719ad4630a401ef7edeeb1e890e9ce,
                    0x3ce46d591cb74f9ff3fa0e605cc93f467e5b92b36b96db579e050c93b6b6f08,
                    0x6d3e671ef910ab199c0023e715c957db852552bac0aec32388ddde4d4e9f6e,
                    0x6caf22180bbb9e9d8bf6a8d6316feee23f8ae00b46c63dd678ad507b7a1df72,
                    0x67562f09852e9118581bb0bec4be129655bdc3a02a16e762310045d9f56e94b,
                    0x54e179b281d4bd5e3f8fb7d908e9b4c9fb96e3b9979773367b3eabdefc7a855,
                    0x5c52ade0402a99da001559f24a727301214bac93e6f595f69b58eba5c08c2c6,
                    0x7fcd7f7fa6868dded403eae764f6e5fb8ba5eb95025a8fa3dbe78c0b15841f5,
                    0x36639ed4ba7dfb4fc1183957d2ac0cf8d8dd15d2c6671892c06c435857cc180,
                    0x549bdc74a1868fab3529cb198cf59985f564bab02a715b4655fb326f14ce1d7,
                    0x491c75130af4af4cfbd2c9792faec82d7b64c2580adc29507be452474e902d6,
                    0xaf92b08fa2a98ee8757cfa01e3e509324ccee845e851cf187e25b9a0b1dc6d,
                    0x38953a4c76a7c14ab0308bf57dc75583b7e8a37dafdd740c94d602fe7d3882c,
                    0x241578ccf41d83759f8aa4094c7c563b23b215eadac97c817e2b3288d9dfc0f,
                    0x360b0bb2abf2137a097d35d51c55fa36dc112cac8ad65e211bd3cc2928ec44f,
                    0x2df9df103b6cd28a9c23a474b1881efd64b2a52841def825a4be0b63eec78b3,
                    0x4f0292a3cfcfe6e8d9f275430c5e65f32fbb8ff13701e1843cb51df26904ffb,
                    0x6d1b38018172302b35a9bd86bd4214e83e459f70769470e537f86195c3f8ece,
                    0x5a5baecd80911cffd825b184046f8e22c4dde8dab810f7a86f9976fe3e50e06,
                    0x2e6fcffc643f9db7289365ca24c2770303c834900f0ead25176180243da622b,
                    0x39bf9a66a306cdbd810cd707a38d783efbab1edcec27ec5eacd25e981176d6,
                    0x4440351a5bfe12767c173cb75a84d01c58006c1af357c1fc97d09b52891cdc1,
                    0x748acd1b4f6cf4c036bfb9473f8daede7205631d03858a47be60ee995fa3a35,
                    0x37b14e20e0fde12adc6782f1c4e53cc0f235d349be2186d5a1d9a88eff43396,
                    0x551c046bcbc26538ba87079d42a6a8e04c1a067b7a86bda6e2a3ec415108076,
                    0x6ecc929621cbcd012f941a26cb7f0ec59c4f0a2766dd0ba3f81e22c29b9a204,
                    0x75780a8cdd4bec45ecdd72b90e65ea7cdf18ca6e6a36e9137de98470dc10707,
                    0x36f5b022c21745438dac19c6b4a34033e75a7f0eed7a33ef4c294e8ef971d13,
                    0x7635f474524b010528887c972647b2d415c2d9b8aee3631834bd4ca62b1615e,
                    0x41c817d56b35618a49b183c4aa954608251ac093a4f7e9219495be948f51041,
                    0x3546c4eebe67724d71412d947734bbdf7c5b45965bd3ae706e5e2165a6cc44d,
                    0x1794cf560b48c7379b4754ac5bc68e6e73952d235d284c290ab287311c2d6f2,
                    0x3bca77135e322fc983a973300ca41f52705a788b03bc65d0cf42008d07f1a49,
                    0x162eac3404f498c7251e11417b9f34154734feb05ddc2b47fd33dbd347a9f95,
                    0x799528fac31b30cc0da7f17e1b61c82d11ae9bba7a819b39baad3638fb46c2a,
                    0x6826da39c944edbea90c50689228bce87fdca3d228dbd74f29e165cf1e9a4e2,
                    0x5e2098d0a01d8b4905180cbe8bd3414fa0209450a2f7d42790a069e4a679935,
                    0x23182d48ea8c70f6f873438d37bfff005945fd8cc3aa755b4a6a208662cf5d9,
                    0x51db512fe4c635d0d6e5ef740c5970c385ce94449f0a1ba8e8da23d7b5d1aac,
                    0x2e2a416daab87b5a245bae1df3a6b40aa3439b02c4e89d312cdb58b5fd457fb,
                    0x57338ea80242f010a82b0ff602255896d292edfbbcbd15fcfd6e447609967df,
                    0x7d49dc4bec64bb61764b4fa5aed14b9397adf143f68609ff8968ca7f097267e,
                    0x743ee50f109a1f6a418a0f20b073458286368db2abf390786fe26e92890ca9b,
                    0x4dd0c2e007d3ac4c448bcf1124b18d6f8da5910a40768a682f3b49ae84d314a,
                    0x7977ae33038d29439143d566754f6a279fabad5652f656c015fdccdf139d992,
                    0x4ab9e1efd1933ee4cb65150285b631adf2d39bd0afb7a8794cb2bc4cc97661e,
                    0x281877ca7d71bec75f9d4333cc8936a72cff0323166812d867b5c74510a3204,
                    0x2dcbb734d1ea36b301e3c498f7193e7660bba5f0888ad6e5247b13703960257,
                    0xddb019ddbc69884955ee844be0d9473b18ab08c386caca5d48104de7389251,
                    0x5b0bdc504d2b9706b63b4580cc3c3e305ca3622d2ccb10ee3ffe2c80743a35e,
                    0x546dcb7a0d9e5e94cf9c3fbb0134ab6b44039ff94aa81d9b9f04c1df90d163d,
                    0x6b76b89458ac16fa216b69ba625f1b75fec86a217ca38a4ba543b7fd5dfeb94,
                    0x6b4b5c9e99def45dd55fdf296575f1c1e13703efa7fce78bc2ffb823ae40707,
                    0xf31672ca4b74faa64825c8f2e7a9f1e59f24fe1668e6b216a09b5cb60cc2a5,
                    0x2882777db946d2e843ca50c57539b9b68a04ffcf20ee85f0aa7613a97e4ff91,
                    0x5cdde72ab5242bc7e960a7ac03a267c41acec01e8055f364a69a88658ade14e,
                    0x775b93c1e23d66802e3966e592a90a52389e6f5edca943f5a5f13240b8edc52,
                    0x42c4c3e03c9d3bda5768de854a815b21d2c3f526effc37589d45c2c62cb4f50,
                    0x23021a5382d81598d4ec984672baaaaed89226b0c412bec62ab7ccb77a8d7c3,
                    0x3afa09f61350aac164c4fe26b36ec71d69592b0aa9f047b70f79684b1e09def,
                    0x70e2230755ff2546be7c5428d6ea2d55793c26b7b7e207562db967bd70f9d7c,
                    0x3145154f805ae462a1eb7483321f4a996af1623b7b8693efd14eb067cbdece1,
                    0x6d888e9fac6c2b00a50c25c1eb6b47999fec89a9874316c073fd5ffb63c4cfa,
                    0x4ff6fe6d074db3a6289233dd574930ef8815b0c7f2a6a3396c21d9f676620c7,
                    0x7149e859339a6abf38831ef32edba35fc255dfec59786f33bb6282070d3fa75,
                    0x118d99109ed8803689b69c493f3dee2d315ba3dc8b91b1f4e46ccdadf5bf1f8,
                    0x1670d5c96d93b0e4e3261da2dfc56e5e4f2118673fdf56051a86391dff2859c,
                    0x2bef641b9ce105489a9bb67b3b9159fe2431f5f9d2506e6b063d154b5ee620e,
                    0x15e2784ccf661a7758f533753e878ddaebc363c42cd77cabe3ecf5eca84c9f1,
                    0x2a77759fe57df4274e9c3b13cf8e57bd76c921a3e1bfbb051a42848093c7912,
                    0x521fbee11910307c13fa71906bdafce0f4aeef36d8eeb4e0773245e62a64dbb,
                    0x23377b34053a229eca02bf28414371c8ae467932b57d75e66278a17ac45ca2b,
                    0x3cfa545f07ae1718219c3e3b9bdb180afea14724e79d55b12015f468422708e,
                    0x31f6ee2bd5fdbdb12d928253c749672c5268056fd4755f18157988b4dc44060,
                    0x20aa030d270f99b8561dc48190eaaebf751d1566077a1519ce26183c2a37644,
                ]
                    .span()
            }
        },
        fri_witness: stone_proof_fibonacci::fri::witness::get(),
    };
}
