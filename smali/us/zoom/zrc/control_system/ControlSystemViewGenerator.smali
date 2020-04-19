.class Lus/zoom/zrc/control_system/ControlSystemViewGenerator;
.super Ljava/lang/Object;
.source "ControlSystemViewGenerator.java"


# static fields
.field private static final iconSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final icons:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x18

    .line 28
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "icon_error"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "icon_power"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "icon_up"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "icon_down"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "icon_cold"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "icon_hot"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "icon_dry"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "icon_wind"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "icon_air_conditioner"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "icon_cable_tv"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "icon_ceiling_mic"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "icon_curtain"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "icon_dvd_player"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "icon_game_console"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "icon_hdmi"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "icon_laptop"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "icon_light"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "icon_projector"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "icon_rack_equipment"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "icon_satelite_dish"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "icon_speaker"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "icon_speakerphone"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "icon_tv"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "icon_satellite_dish"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sput-object v0, Lus/zoom/zrc/control_system/ControlSystemViewGenerator;->icons:[Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lus/zoom/zrc/control_system/ControlSystemViewGenerator;->icons:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lus/zoom/zrc/control_system/ControlSystemViewGenerator;->iconSet:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildDevice(Lus/zoom/zrc/control_system/ControlSystemContext;)Landroid/widget/LinearLayout;
    .locals 4

    .line 53
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    sget v1, Lus/zoom/zrcbox/R$attr;->controlSystemDeviceBackground:I

    invoke-static {p0, v1}, Lus/zoom/zrc/control_system/ControlSystemViewGenerator;->getAttrDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x1

    .line 56
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-object v0
.end method

.method static buildDeviceHeadBottomLine(Lus/zoom/zrc/control_system/ControlSystemContext;)Landroid/view/View;
    .locals 5

    .line 61
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v2}, Lus/zoom/androidlib/util/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 63
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$dimen;->zrcs_device_head_bottom_line_padding_hor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 64
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lus/zoom/zrcbox/R$dimen;->zrcs_device_head_bottom_line_padding_hor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x0

    .line 63
    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget p0, p0, Lus/zoom/zrc/control_system/ControlSystemContext;->deviceHeadBottomLineColor:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    return-object v0
.end method

.method static buildIcon(Lus/zoom/zrc/control_system/ControlSystemContext;I)Landroid/widget/ImageView;
    .locals 5

    .line 71
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$dimen;->zrcs_icon_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 73
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lus/zoom/zrcbox/R$dimen;->zrcs_icon_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    iget p0, p0, Lus/zoom/zrc/control_system/ControlSystemContext;->nameColor:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/4 p0, 0x0

    .line 76
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static buildImageParam(Lus/zoom/zrc/control_system/ControlSystemContext;I)Landroid/widget/ImageView;
    .locals 6

    .line 81
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lus/zoom/zrcbox/R$dimen;->zrcs_image_param_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lus/zoom/zrcbox/R$dimen;->zrcs_image_param_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$dimen;->zrcs_image_param_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 84
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$dimen;->zrcs_image_param_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 85
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lus/zoom/zrcbox/R$dimen;->zrcs_image_param_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 86
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lus/zoom/zrcbox/R$dimen;->zrcs_image_param_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 83
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 87
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt p1, v1, :cond_0

    .line 89
    iget-object p1, p0, Lus/zoom/zrc/control_system/ControlSystemContext;->paramColor:Landroid/content/res/ColorStateList;

    invoke-static {v0, p1}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/control_system/ControlSystemContext;->paramColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 93
    :goto_0
    sget p1, Lus/zoom/zrcbox/R$attr;->controlSystemImageParamBackground:I

    invoke-static {p0, p1}, Lus/zoom/zrc/control_system/ControlSystemViewGenerator;->getAttrDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method static buildLineConnecting(Lus/zoom/zrc/control_system/ControlSystemContext;)Landroid/view/ViewGroup;
    .locals 5

    .line 188
    invoke-static {p0}, Lus/zoom/zrc/control_system/ControlSystemViewGenerator;->buildLineNotConnectedLeft(Lus/zoom/zrc/control_system/ControlSystemContext;)Lus/zoom/zrc/control_system/ControlSystemRow;

    move-result-object v0

    .line 189
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 190
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lus/zoom/zrcbox/R$dimen;->zrcs_icon_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lus/zoom/zrcbox/R$dimen;->zrcs_connecting_icon_size:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-direct {v2, v3, p0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    invoke-virtual {v0, v1}, Lus/zoom/zrc/control_system/ControlSystemRow;->addRight(Landroid/view/View;)V

    return-object v0
.end method

.method static buildLineDisconnected(Lus/zoom/zrc/control_system/ControlSystemContext;Ljava/lang/String;)Landroid/view/ViewGroup;
    .locals 3

    .line 174
    invoke-static {p0}, Lus/zoom/zrc/control_system/ControlSystemViewGenerator;->buildLineNotConnectedLeft(Lus/zoom/zrc/control_system/ControlSystemContext;)Lus/zoom/zrc/control_system/ControlSystemRow;

    move-result-object v0

    .line 175
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$string;->retry:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lus/zoom/zrc/control_system/ControlSystemViewGenerator;->buildTextParam(Lus/zoom/zrc/control_system/ControlSystemContext;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p0

    .line 176
    new-instance v1, Lus/zoom/zrc/control_system/ControlSystemViewGenerator$1;

    invoke-direct {v1, p1}, Lus/zoom/zrc/control_system/ControlSystemViewGenerator$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    invoke-virtual {v0, p0}, Lus/zoom/zrc/control_system/ControlSystemRow;->addRight(Landroid/view/View;)V

    return-object v0
.end method

.method static buildLineNotConnectedHead(Lus/zoom/zrc/control_system/ControlSystemContext;Landroid/widget/ImageView;Landroid/widget/TextView;)Landroid/widget/LinearLayout;
    .locals 6

    .line 128
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x50

    .line 130
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 131
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lus/zoom/zrcbox/R$dimen;->zrcs_error_row_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$dimen;->zrcs_row_padding_hor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 133
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lus/zoom/zrcbox/R$dimen;->zrcs_row_padding_hor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 132
    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 135
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 136
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    .line 137
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 138
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lus/zoom/zrcbox/R$dimen;->zrcs_icon_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    const/4 v5, -0x2

    invoke-direct {v3, v5, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_0

    .line 141
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lus/zoom/zrcbox/R$dimen;->zrcs_gap:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v3, v1, v1, p0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 143
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
    :cond_0
    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 148
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private static buildLineNotConnectedLeft(Lus/zoom/zrc/control_system/ControlSystemContext;)Lus/zoom/zrc/control_system/ControlSystemRow;
    .locals 7

    .line 153
    new-instance v0, Lus/zoom/zrc/control_system/ControlSystemRow;

    invoke-direct {v0, p0}, Lus/zoom/zrc/control_system/ControlSystemRow;-><init>(Landroid/content/Context;)V

    .line 154
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 155
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lus/zoom/zrcbox/R$dimen;->zrcs_icon_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 156
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lus/zoom/zrcbox/R$dimen;->zrcs_icon_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 155
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$dimen;->zrcs_error_icon_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 158
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lus/zoom/zrcbox/R$dimen;->zrcs_error_icon_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 159
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lus/zoom/zrcbox/R$dimen;->zrcs_error_icon_padding:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 160
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lus/zoom/zrcbox/R$dimen;->zrcs_error_icon_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 157
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    const-string v2, "icon_error"

    .line 161
    invoke-static {p0, v2}, Lus/zoom/zrc/control_system/ControlSystemViewGenerator;->getIconId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$color;->zrcs_red:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/4 v2, 0x0

    .line 163
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$string;->zrcs_error_name:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lus/zoom/zrcbox/R$dimen;->zrcs_error_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lus/zoom/zrc/control_system/ControlSystemViewGenerator;->buildName(Lus/zoom/zrc/control_system/ControlSystemContext;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    .line 166
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lus/zoom/zrcbox/R$color;->zrcs_red:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    invoke-virtual {v0, v1}, Lus/zoom/zrc/control_system/ControlSystemRow;->addLeft(Landroid/view/View;)V

    .line 169
    invoke-virtual {v0, v2}, Lus/zoom/zrc/control_system/ControlSystemRow;->addLeft(Landroid/view/View;)V

    return-object v0
.end method

.method static buildName(Lus/zoom/zrc/control_system/ControlSystemContext;Ljava/lang/String;IZ)Landroid/widget/TextView;
    .locals 3

    .line 115
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 116
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    const/4 p2, 0x0

    .line 118
    invoke-virtual {v0, p2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 119
    iget p0, p0, Lus/zoom/zrc/control_system/ControlSystemContext;->nameColor:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p0, 0x1

    .line 120
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 121
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 122
    sget-object p0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 123
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-object v0
.end method

.method static buildTextParam(Lus/zoom/zrc/control_system/ControlSystemContext;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 4

    .line 98
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 99
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 100
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$dimen;->zrcs_text_param_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lus/zoom/zrcbox/R$dimen;->zrcs_text_param_padding_hor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 102
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lus/zoom/zrcbox/R$dimen;->zrcs_text_param_padding_hor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    .line 101
    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 103
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x11

    .line 104
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 105
    invoke-virtual {p0}, Lus/zoom/zrc/control_system/ControlSystemContext;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lus/zoom/zrcbox/R$dimen;->zrcs_text_size:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {v0, v3, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 106
    iget-object p1, p0, Lus/zoom/zrc/control_system/ControlSystemContext;->paramColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 107
    sget p1, Lus/zoom/zrcbox/R$attr;->controlSystemTextParamBackground:I

    invoke-static {p0, p1}, Lus/zoom/zrc/control_system/ControlSystemViewGenerator;->getAttrDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x1

    .line 108
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 109
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 110
    sget-object p0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-object v0
.end method

.method private static getAttrDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x1

    .line 46
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 47
    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 48
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1
.end method

.method static getIconId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 38
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 39
    sget-object v1, Lus/zoom/zrc/control_system/ControlSystemViewGenerator;->iconSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zrcs_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    return v0
.end method
