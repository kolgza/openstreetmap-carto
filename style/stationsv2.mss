@station-color: #7981b0;
@station-text: darken(saturate(@station-color, 15%), 10%);

# stations {
  [public_transport = 'station'][zoom >= 12] {
    marker-file: url('symbols/square.svg');
    marker-fill: @station-color;
    marker-clip: false;
    [bus = 'yes'] {
    }
    [trolleybus = 'yes'] {
    }
    [tram = 'yes'] {
    }
    [ferry = 'yes'] {
    }
    [monorail = 'yes'] {
    }
    [light_rail = 'yes'] {
    }
    [subway = 'yes'] {
    }
    [train = 'yes'] {
      [zoom >= 13] {
        marker-width: 4;
      }
      [zoom >= 14] {
        text-name: "[name]";
        text-face-name: @bold-fonts;
        text-size: 10;
        text-fill: @station-text;
        text-dy: 9;
        text-halo-radius: @standard-halo-radius * 1.5;
        text-halo-fill: @standard-halo-fill;
        text-wrap-width: 30; // 3 em
        text-line-spacing: -1.5; // -0.15 em
      }
      [zoom >= 15] {
        marker-width: 9;
        text-size: 11;
        text-wrap-width: 33; // 3 em
        text-line-spacing: -1.65; // -0.15 em
        text-dy: 10;
      }
    }
  }

  [public_transport = 'stop_area'] {
    [bus = 'yes'] {
    }
    [trolleybus = 'yes'] {
    }
    [tram = 'yes'] {
    }
    [ferry = 'yes'] {
    }
    [monorail = 'yes'] {
    }
    [light_rail = 'yes'] {
    }
    [subway = 'yes'] {
    }
    [train = 'yes'] {
    }
  }
}
