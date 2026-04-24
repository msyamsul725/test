import 'package:flutter/material.dart';

void main() {
  runApp(const CompanyProfileApp());
}

class CompanyProfileApp extends StatelessWidget {
  const CompanyProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    const primary = Color(0xFF0E3B43);
    const secondary = Color(0xFFC48A3A);
    const surface = Color(0xFFF5F1EA);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Arunika Consulting Group',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: primary,
          brightness: Brightness.light,
          primary: primary,
          secondary: secondary,
          surface: Colors.white,
        ),
        scaffoldBackgroundColor: surface,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 56,
            height: 1.05,
            fontWeight: FontWeight.w700,
            color: Color(0xFF172026),
          ),
          displayMedium: TextStyle(
            fontSize: 42,
            height: 1.1,
            fontWeight: FontWeight.w700,
            color: Color(0xFF172026),
          ),
          headlineMedium: TextStyle(
            fontSize: 28,
            height: 1.2,
            fontWeight: FontWeight.w700,
            color: Color(0xFF172026),
          ),
          titleLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color(0xFF172026),
          ),
          bodyLarge: TextStyle(
            fontSize: 16,
            height: 1.7,
            color: Color(0xFF4E5B61),
          ),
          bodyMedium: TextStyle(
            fontSize: 14,
            height: 1.6,
            color: Color(0xFF5E6A70),
          ),
        ),
      ),
      home: const CompanyProfilePage(),
    );
  }
}

class CompanyProfilePage extends StatelessWidget {
  const CompanyProfilePage({super.key});

  static const services = <ProfileItem>[
    ProfileItem(
      title: 'Strategi Bisnis',
      subtitle:
          'Menyusun roadmap pertumbuhan, diferensiasi brand, dan model bisnis yang relevan dengan target pasar.',
      icon: Icons.insights_rounded,
    ),
    ProfileItem(
      title: 'Transformasi Digital',
      subtitle:
          'Membantu perusahaan mempercepat adopsi teknologi melalui otomasi, integrasi, dan eksekusi yang terukur.',
      icon: Icons.hub_rounded,
    ),
    ProfileItem(
      title: 'Pengembangan Organisasi',
      subtitle:
          'Merancang struktur kerja, KPI, dan budaya kolaborasi agar tim siap tumbuh secara berkelanjutan.',
      icon: Icons.groups_rounded,
    ),
    ProfileItem(
      title: 'Corporate Communication',
      subtitle:
          'Membangun materi presentasi, company profile, dan narasi perusahaan yang kredibel di mata stakeholder.',
      icon: Icons.campaign_rounded,
    ),
  ];

  static const advantages = <ProfileItem>[
    ProfileItem(
      title: 'Pendekatan Berbasis Data',
      subtitle:
          'Setiap rekomendasi disusun dari insight pasar, analisis operasional, dan sasaran bisnis yang jelas.',
      icon: Icons.query_stats_rounded,
    ),
    ProfileItem(
      title: 'Eksekusi yang Praktis',
      subtitle:
          'Kami tidak berhenti di strategi. Tim kami mendampingi implementasi agar hasil bisa langsung dirasakan.',
      icon: Icons.task_alt_rounded,
    ),
    ProfileItem(
      title: 'Kolaborasi Profesional',
      subtitle:
          'Kami bekerja sebagai partner, menjaga ritme komunikasi, transparansi progres, dan akuntabilitas.',
      icon: Icons.handshake_rounded,
    ),
  ];

  static const caseStudies = <CaseStudy>[
    CaseStudy(
      title: 'Repositioning Perusahaan Distribusi',
      category: 'Brand Strategy',
      result: 'Pertumbuhan prospek B2B naik 38% dalam 6 bulan.',
    ),
    CaseStudy(
      title: 'Digitalisasi Operasional Multi-Cabang',
      category: 'Digital Transformation',
      result: 'Waktu pelaporan internal turun dari 5 hari menjadi 1 hari.',
    ),
    CaseStudy(
      title: 'Penyusunan Company Profile Investasi',
      category: 'Corporate Communication',
      result:
          'Materi presentasi berhasil mendukung proses pitching ke investor strategis.',
    ),
  ];

  static const phases = <String>[
    'Discovery dan pemetaan kebutuhan',
    'Perumusan strategi dan prioritas',
    'Eksekusi bertahap dengan milestone jelas',
    'Evaluasi hasil dan optimasi lanjutan',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 900;

          return Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFF5F1EA),
                  Color(0xFFF4F7F5),
                  Color(0xFFECE7DE),
                ],
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _TopBar(isMobile: isMobile),
                  _Section(child: _HeroSection(isMobile: isMobile)),
                  _Section(child: _MetricsSection(isMobile: isMobile)),
                  _Section(child: _AboutSection(isMobile: isMobile)),
                  _Section(
                    child: _GridSection(
                      eyebrow: 'Layanan Kami',
                      title:
                          'Solusi yang disusun untuk membantu perusahaan bertumbuh lebih terarah.',
                      items: services,
                      isMobile: isMobile,
                    ),
                  ),
                  _Section(child: _AdvantagesSection(isMobile: isMobile)),
                  _Section(child: _ProcessSection(isMobile: isMobile)),
                  _Section(child: _CaseStudySection(isMobile: isMobile)),
                  _Section(child: _ContactSection(isMobile: isMobile)),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _TopBar extends StatelessWidget {
  const _TopBar({required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(24, isMobile ? 24 : 32, 24, 0),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1180),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.78),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: const Color(0xFFE6DDD0)),
            ),
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    gradient: const LinearGradient(
                      colors: [Color(0xFF0E3B43), Color(0xFF1A6874)],
                    ),
                  ),
                  child: const Icon(
                    Icons.apartment_rounded,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 14),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Arunika Consulting Group',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF172026),
                        ),
                      ),
                      Text(
                        'Strategic Growth and Corporate Communication',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF6D787D),
                        ),
                      ),
                    ],
                  ),
                ),
                if (!isMobile)
                  const Wrap(
                    spacing: 24,
                    children: [
                      _NavText('Tentang'),
                      _NavText('Layanan'),
                      _NavText('Portofolio'),
                      _NavText('Kontak'),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _HeroSection extends StatelessWidget {
  const _HeroSection({required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.all(isMobile ? 28 : 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(36),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF0E3B43), Color(0xFF154F58), Color(0xFF1D6B6D)],
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x220E3B43),
            blurRadius: 40,
            offset: Offset(0, 16),
          ),
        ],
      ),
      child: isMobile
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _HeroCopy(theme: theme, isMobile: isMobile),
                const SizedBox(height: 28),
                const _HeroPanel(),
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 6,
                  child: _HeroCopy(theme: theme, isMobile: isMobile),
                ),
                const SizedBox(width: 28),
                const Expanded(flex: 4, child: _HeroPanel()),
              ],
            ),
    );
  }
}

class _HeroCopy extends StatelessWidget {
  const _HeroCopy({required this.theme, required this.isMobile});

  final ThemeData theme;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
            color: const Color(0x1FFFFFFF),
            borderRadius: BorderRadius.circular(999),
            border: Border.all(color: const Color(0x33FFFFFF)),
          ),
          child: const Text(
            'Company Profile 2026',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 24),
        Text(
          'Mitra strategis untuk perusahaan yang ingin tampil lebih kredibel, modern, dan siap tumbuh.',
          style:
              (isMobile
                      ? theme.textTheme.displayMedium
                      : theme.textTheme.displayLarge)
                  ?.copyWith(color: Colors.white, fontSize: isMobile ? 38 : 58),
        ),
        const SizedBox(height: 20),
        const Text(
          'Kami membantu brand, organisasi, dan perusahaan membangun arah bisnis yang jelas melalui strategi, transformasi digital, dan komunikasi korporat yang kuat.',
          style: TextStyle(color: Color(0xFFE1ECEA), fontSize: 16, height: 1.8),
        ),
        const SizedBox(height: 28),
        Wrap(
          spacing: 14,
          runSpacing: 14,
          children: [
            FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                backgroundColor: const Color(0xFFC48A3A),
                foregroundColor: const Color(0xFF172026),
                padding: const EdgeInsets.symmetric(
                  horizontal: 22,
                  vertical: 18,
                ),
              ),
              child: const Text('Jadwalkan Konsultasi'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                side: const BorderSide(color: Color(0x66FFFFFF)),
                padding: const EdgeInsets.symmetric(
                  horizontal: 22,
                  vertical: 18,
                ),
              ),
              child: const Text('Lihat Layanan'),
            ),
          ],
        ),
      ],
    );
  }
}

class _HeroPanel extends StatelessWidget {
  const _HeroPanel();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFFF8F3EC),
        borderRadius: BorderRadius.circular(28),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Fokus Utama',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xFF746D63),
            ),
          ),
          SizedBox(height: 16),
          _HeroPoint(
            title: 'Corporate Positioning',
            description:
                'Menyusun citra perusahaan yang meyakinkan untuk klien, investor, dan mitra bisnis.',
          ),
          SizedBox(height: 14),
          _HeroPoint(
            title: 'Operational Excellence',
            description:
                'Memperkuat sistem kerja agar proses internal lebih efisien dan mudah dikembangkan.',
          ),
          SizedBox(height: 14),
          _HeroPoint(
            title: 'Growth Communication',
            description:
                'Mengubah pesan bisnis yang kompleks menjadi narasi yang rapi, singkat, dan persuasif.',
          ),
        ],
      ),
    );
  }
}

class _MetricsSection extends StatelessWidget {
  const _MetricsSection({required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    const metrics = [
      MetricItem(value: '120+', label: 'Project korporat terselesaikan'),
      MetricItem(value: '35+', label: 'Klien dari berbagai industri'),
      MetricItem(value: '92%', label: 'Tingkat retensi kemitraan'),
      MetricItem(value: '10 Tahun', label: 'Pengalaman kolektif tim'),
    ];

    return Wrap(
      spacing: 18,
      runSpacing: 18,
      children: metrics
          .map(
            (metric) => SizedBox(
              width: isMobile ? double.infinity : 265,
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(28),
                  border: Border.all(color: const Color(0xFFE6DDD0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      metric.value,
                      style: const TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF0E3B43),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(metric.label),
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}

class _AboutSection extends StatelessWidget {
  const _AboutSection({required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return isMobile
        ? const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [_AboutCopy(), SizedBox(height: 20), _AboutHighlight()],
          )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 6, child: _AboutCopy()),
              SizedBox(width: 24),
              Expanded(flex: 4, child: _AboutHighlight()),
            ],
          );
  }
}

class _AboutCopy extends StatelessWidget {
  const _AboutCopy();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _SectionHeader(
          eyebrow: 'Tentang Kami',
          title:
              'Arunika Consulting Group membantu perusahaan bergerak dengan arah yang lebih pasti.',
        ),
        SizedBox(height: 18),
        Text(
          'Kami adalah konsultan bisnis dan komunikasi korporat yang berfokus pada pertumbuhan jangka panjang. Tim kami memadukan strategi, desain komunikasi, dan pemahaman operasional agar setiap solusi tidak hanya tampak baik, tetapi juga bekerja dengan efektif.',
        ),
        SizedBox(height: 12),
        Text(
          'Dengan pendekatan yang rapi dan kolaboratif, kami mendampingi organisasi dalam menyusun positioning, memperkuat sistem kerja, dan menyampaikan nilai perusahaan secara profesional kepada pasar.',
        ),
      ],
    );
  }
}

class _AboutHighlight extends StatelessWidget {
  const _AboutHighlight();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: const Color(0xFFEEE3D2),
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Visi',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Color(0xFF172026),
            ),
          ),
          SizedBox(height: 12),
          Text(
            'Menjadi mitra terpercaya bagi perusahaan Indonesia dalam membangun fondasi bisnis yang modern, adaptif, dan berdaya saing.',
          ),
          SizedBox(height: 22),
          Text(
            'Misi',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: Color(0xFF172026),
            ),
          ),
          SizedBox(height: 12),
          Text(
            'Menghadirkan solusi strategis yang jelas, komunikatif, dan dapat diimplementasikan dengan standar kerja profesional.',
          ),
        ],
      ),
    );
  }
}

class _GridSection extends StatelessWidget {
  const _GridSection({
    required this.eyebrow,
    required this.title,
    required this.items,
    required this.isMobile,
  });

  final String eyebrow;
  final String title;
  final List<ProfileItem> items;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _SectionHeader(eyebrow: eyebrow, title: title),
        const SizedBox(height: 24),
        Wrap(
          spacing: 18,
          runSpacing: 18,
          children: items
              .map(
                (item) => SizedBox(
                  width: isMobile ? double.infinity : 360,
                  child: _InfoCard(item: item),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

class _AdvantagesSection extends StatelessWidget {
  const _AdvantagesSection({required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _SectionHeader(
          eyebrow: 'Keunggulan',
          title:
              'Nilai yang membuat kerja sama terasa lebih terarah dan meyakinkan.',
        ),
        const SizedBox(height: 24),
        Wrap(
          spacing: 18,
          runSpacing: 18,
          children: CompanyProfilePage.advantages
              .map(
                (item) => SizedBox(
                  width: isMobile ? double.infinity : 360,
                  child: _InfoCard(item: item, accent: true),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

class _ProcessSection extends StatelessWidget {
  const _ProcessSection({required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(isMobile ? 26 : 34),
      decoration: BoxDecoration(
        color: const Color(0xFF172026),
        borderRadius: BorderRadius.circular(34),
      ),
      child: isMobile
          ? const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _ProcessHeader(),
                SizedBox(height: 24),
                _ProcessSteps(),
              ],
            )
          : const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 4, child: _ProcessHeader()),
                SizedBox(width: 24),
                Expanded(flex: 6, child: _ProcessSteps()),
              ],
            ),
    );
  }
}

class _ProcessHeader extends StatelessWidget {
  const _ProcessHeader();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Cara Kami Bekerja',
          style: TextStyle(
            color: Color(0xFFC9A66B),
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 12),
        Text(
          'Proses kerja yang rapi membuat strategi lebih mudah dieksekusi.',
          style: TextStyle(
            fontSize: 30,
            height: 1.2,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 14),
        Text(
          'Kami menjaga alur kerja tetap sederhana namun disiplin, sehingga setiap tahapan memiliki output yang jelas dan dapat dievaluasi.',
          style: TextStyle(color: Color(0xFFB5C1C5), height: 1.7),
        ),
      ],
    );
  }
}

class _ProcessSteps extends StatelessWidget {
  const _ProcessSteps();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        CompanyProfilePage.phases.length,
        (index) => Padding(
          padding: EdgeInsets.only(bottom: index == 3 ? 0 : 16),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFF223037),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: const Color(0x33FFFFFF)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFFC48A3A),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '${index + 1}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF172026),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    CompanyProfilePage.phases[index],
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      height: 1.6,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CaseStudySection extends StatelessWidget {
  const _CaseStudySection({required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _SectionHeader(
          eyebrow: 'Portofolio Singkat',
          title: 'Beberapa contoh hasil kerja yang menunjukkan dampak nyata.',
        ),
        const SizedBox(height: 24),
        Wrap(
          spacing: 18,
          runSpacing: 18,
          children: CompanyProfilePage.caseStudies
              .map(
                (study) => SizedBox(
                  width: isMobile ? double.infinity : 360,
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(28),
                      border: Border.all(color: const Color(0xFFE6DDD0)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          study.category,
                          style: const TextStyle(
                            color: Color(0xFFC48A3A),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 14),
                        Text(
                          study.title,
                          style: const TextStyle(
                            fontSize: 22,
                            height: 1.3,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF172026),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(study.result),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}

class _ContactSection extends StatelessWidget {
  const _ContactSection({required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(isMobile ? 26 : 34),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(34),
        gradient: const LinearGradient(
          colors: [Color(0xFFEEE3D2), Color(0xFFF8F3EC)],
        ),
      ),
      child: isMobile
          ? const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [_ContactCopy(), SizedBox(height: 20), _ContactCard()],
            )
          : const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 5, child: _ContactCopy()),
                SizedBox(width: 24),
                Expanded(flex: 4, child: _ContactCard()),
              ],
            ),
    );
  }
}

class _ContactCopy extends StatelessWidget {
  const _ContactCopy();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _SectionHeader(
          eyebrow: 'Hubungi Kami',
          title:
              'Siap menyusun company profile dan strategi bisnis yang lebih meyakinkan.',
        ),
        SizedBox(height: 16),
        Text(
          'Kami terbuka untuk kolaborasi dengan perusahaan yang ingin memperkuat positioning, memperbaiki sistem, atau menyiapkan materi korporat yang lebih profesional.',
        ),
      ],
    );
  }
}

class _ContactCard extends StatelessWidget {
  const _ContactCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(28),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ContactRow(
            icon: Icons.location_on_rounded,
            title: 'Kantor Pusat',
            value: 'Jakarta Selatan, Indonesia',
          ),
          SizedBox(height: 18),
          _ContactRow(
            icon: Icons.mail_rounded,
            title: 'Email',
            value: 'hello@arunikaconsulting.co.id',
          ),
          SizedBox(height: 18),
          _ContactRow(
            icon: Icons.call_rounded,
            title: 'Telepon',
            value: '+62 21 5555 9088',
          ),
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  const _InfoCard({required this.item, this.accent = false});

  final ProfileItem item;
  final bool accent;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: accent ? const Color(0xFFFAF7F2) : Colors.white,
        borderRadius: BorderRadius.circular(28),
        border: Border.all(
          color: accent ? const Color(0xFFE8D7BF) : const Color(0xFFE6DDD0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              color: accent ? const Color(0xFFEEE3D2) : const Color(0xFFE7F0EE),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(item.icon, color: const Color(0xFF0E3B43)),
          ),
          const SizedBox(height: 18),
          Text(
            item.title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Color(0xFF172026),
            ),
          ),
          const SizedBox(height: 10),
          Text(item.subtitle),
        ],
      ),
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 22, 24, 0),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1180),
          child: child,
        ),
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.eyebrow, required this.title});

  final String eyebrow;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          eyebrow,
          style: const TextStyle(
            color: Color(0xFFC48A3A),
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 10),
        Text(title, style: Theme.of(context).textTheme.headlineMedium),
      ],
    );
  }
}

class _NavText extends StatelessWidget {
  const _NavText(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        color: Color(0xFF415055),
      ),
    );
  }
}

class _HeroPoint extends StatelessWidget {
  const _HeroPoint({required this.title, required this.description});

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 10,
          height: 10,
          margin: const EdgeInsets.only(top: 8),
          decoration: const BoxDecoration(
            color: Color(0xFFC48A3A),
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF172026),
                ),
              ),
              const SizedBox(height: 6),
              Text(
                description,
                style: const TextStyle(color: Color(0xFF58656A), height: 1.6),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ContactRow extends StatelessWidget {
  const _ContactRow({
    required this.icon,
    required this.title,
    required this.value,
  });

  final IconData icon;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: const Color(0xFFE7F0EE),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Icon(icon, color: const Color(0xFF0E3B43)),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF172026),
                ),
              ),
              const SizedBox(height: 4),
              Text(value),
            ],
          ),
        ),
      ],
    );
  }
}

class ProfileItem {
  const ProfileItem({
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  final String title;
  final String subtitle;
  final IconData icon;
}

class CaseStudy {
  const CaseStudy({
    required this.title,
    required this.category,
    required this.result,
  });

  final String title;
  final String category;
  final String result;
}

class MetricItem {
  const MetricItem({required this.value, required this.label});

  final String value;
  final String label;
}
