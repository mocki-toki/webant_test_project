library core;

export 'core_module.dart';

export 'domain/failure/backend_failure.dart';
export 'domain/failure/domain_failure.dart';
export 'domain/failure/failure.dart';
export 'domain/failure/network_failure.dart';

export 'infrastructure/infrastructure_constants.dart';
export 'infrastructure/helpers/data_extension.dart';

export 'presentation/presentation_constants.dart';

export 'presentation/assets/image_assets.dart';

export 'presentation/styles/border_radiuses.dart';
export 'presentation/styles/colors.dart';
export 'presentation/styles/paddings.dart';
export 'presentation/styles/sizes.dart';
export 'presentation/styles/text_styles.dart';
export 'presentation/styles/theme.dart';

export 'presentation/widgets/disable_route_animation.dart';
export 'presentation/widgets/indent.dart';

export 'package:dino/dino.dart';
export 'package:pansy_arch_flutter/pansy_arch_flutter.dart' hide DataExtension;
export 'package:pansy_arch_go_router/pansy_arch_go_router.dart' hide DataExtension;
export 'package:flutter/material.dart' hide Theme, RouteFactory, Colors;
export 'package:fpdart/fpdart.dart' hide State;
export 'package:freezed_annotation/freezed_annotation.dart';
