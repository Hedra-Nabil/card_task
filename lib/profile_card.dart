import 'package:card_task/contact_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    final double avatarSize = 130;
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: avatarSize + 12,
                  height: avatarSize + 12,
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: avatarSize / 2,
                    backgroundImage: const AssetImage(
                      'assets/images/profile.jpg',
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                
                Text(
                  'Hedra Nabil ',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'FLUTTER DEVELOPER',
                  style: GoogleFonts.poppins(
                    color: Colors.white70,
                    fontSize: 14,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 18),
                SizedBox(
                  width: 220,
                  child: Divider(color: Colors.white24, thickness: 2),
                ),
                const SizedBox(height: 18),

                ContactTile(icon: Icons.call, text: '(+20) 1274782367'),
                const SizedBox(height: 12),
                ContactTile(icon: Icons.email, text: 'hedranabil@outlook.com'),
                const SizedBox(height: 12),
                ContactTile(icon: Icons.code, text: 'github.com/Hedra-Nabil'),

                const SizedBox(height: 28),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
