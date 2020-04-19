.class public Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "SettingArrangeDisplaysFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DELAY:I = 0x14

.field public static final TAG:Ljava/lang/String; = "SettingArrangeDisplaysFragment"


# instance fields
.field private context:Landroid/content/Context;

.field private convertView:Landroid/view/View;

.field private currentScreen:I

.field private quantityOfScreens:I

.field private uiListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;

.field private viewClickEnable:Z

.field private zrc_screen_img_layout_center_x:F

.field private zrc_screen_img_layout_left_x:F

.field private zrc_screen_img_layout_right_x:F

.field private zrc_screen_img_y:F

.field private zrc_screen_right_layout:Landroid/widget/RelativeLayout;

.field private zrc_screen_sequence_calibrate_finished_msg:Landroid/widget/TextView;

.field private zrc_screen_sequence_calibrate_msg_layout:Landroid/widget/LinearLayout;

.field private zrc_screen_sequence_calibrate_reset_msg:Landroid/widget/TextView;

.field private zrc_screen_sequence_msg:Landroid/widget/TextView;

.field private zrc_screen_sequence_title:Landroid/widget/TextView;

.field private zrc_screen_tv_center_img:Landroid/widget/ImageView;

.field private zrc_screen_tv_center_img_layout:Landroid/widget/FrameLayout;

.field private zrc_screen_tv_center_layout:Landroid/widget/RelativeLayout;

.field private zrc_screen_tv_center_txt:Landroid/widget/TextView;

.field private zrc_screen_tv_exit_setup:Landroid/widget/TextView;

.field private zrc_screen_tv_left_img:Landroid/widget/ImageView;

.field private zrc_screen_tv_left_img_layout:Landroid/widget/FrameLayout;

.field private zrc_screen_tv_left_layout:Landroid/widget/RelativeLayout;

.field private zrc_screen_tv_left_txt:Landroid/widget/TextView;

.field private zrc_screen_tv_right_img:Landroid/widget/ImageView;

.field private zrc_screen_tv_right_img_layout:Landroid/widget/FrameLayout;

.field private zrc_screen_tv_right_txt:Landroid/widget/TextView;

.field private zrc_screen_tv_shadow_center_img:Landroid/widget/ImageView;

.field private zrc_screen_tv_shadow_left_img:Landroid/widget/ImageView;

.field private zrc_screen_tv_shadow_right_img:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 88
    iput v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->currentScreen:I

    .line 91
    new-instance v0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$1;

    invoke-direct {v0, p0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$1;-><init>(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;)V

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->uiListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->onExitScreenSequenceCalibration()V

    return-void
.end method

.method static synthetic access$1000(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->swapRight2Left()V

    return-void
.end method

.method static synthetic access$102(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;F)F
    .locals 0

    .line 47
    iput p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_img_y:F

    return p1
.end method

.method static synthetic access$1100(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;[Landroid/view/View;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->swapRightAndLastViewImp([Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1200(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 47
    iget-object p0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_shadow_center_img:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1300(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->swapLeftAnimator()V

    return-void
.end method

.method static synthetic access$1400(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;[Landroid/view/View;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->swapCenterAndLastViewImp([Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1500(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 47
    iget-object p0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_shadow_left_img:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 47
    iget-object p0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_left_img_layout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$302(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;F)F
    .locals 0

    .line 47
    iput p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_img_layout_left_x:F

    return p1
.end method

.method static synthetic access$400(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 47
    iget-object p0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_left_layout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$502(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;F)F
    .locals 0

    .line 47
    iput p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_img_layout_center_x:F

    return p1
.end method

.method static synthetic access$600(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 47
    iget-object p0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_layout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$702(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;F)F
    .locals 0

    .line 47
    iput p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_img_layout_right_x:F

    return p1
.end method

.method static synthetic access$800(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 47
    iget-object p0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_right_layout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$900(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 47
    iget-object p0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_shadow_right_img:Landroid/widget/ImageView;

    return-object p0
.end method

.method private finishCalibrateScreenSequence()V
    .locals 2

    .line 579
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_sequence_title:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->display_arrangement_final_question:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 580
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_sequence_msg:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 581
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_sequence_calibrate_msg_layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private getAnimatorView()[Landroid/view/View;
    .locals 5

    .line 475
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_left_img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_left_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 477
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_left_txt:Landroid/widget/TextView;

    iget v4, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->quantityOfScreens:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_left_img:Landroid/widget/ImageView;

    sget v4, Lus/zoom/zrcbox/R$drawable;->tv_selected:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 479
    new-array v0, v2, [Landroid/view/View;

    iget-object v2, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_left_img_layout:Landroid/widget/FrameLayout;

    aput-object v2, v0, v3

    iget-object v2, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_shadow_left_img:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    return-object v0

    .line 480
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_txt:Landroid/widget/TextView;

    iget v4, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->quantityOfScreens:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 483
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_img:Landroid/widget/ImageView;

    sget v4, Lus/zoom/zrcbox/R$drawable;->tv_selected:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 484
    new-array v0, v2, [Landroid/view/View;

    iget-object v2, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_img_layout:Landroid/widget/FrameLayout;

    aput-object v2, v0, v3

    iget-object v2, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_shadow_center_img:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    return-object v0

    .line 485
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_right_img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 486
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_right_txt:Landroid/widget/TextView;

    iget v4, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->quantityOfScreens:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_right_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 488
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_right_img:Landroid/widget/ImageView;

    sget v4, Lus/zoom/zrcbox/R$drawable;->tv_selected:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 489
    new-array v0, v2, [Landroid/view/View;

    iget-object v2, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_right_img_layout:Landroid/widget/FrameLayout;

    aput-object v2, v0, v3

    iget-object v2, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_shadow_right_img:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private initView()V
    .locals 4

    .line 178
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->convertView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->zrc_screen_sequence_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_sequence_title:Landroid/widget/TextView;

    .line 179
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->convertView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->zrc_screen_sequence_msg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_sequence_msg:Landroid/widget/TextView;

    .line 181
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->convertView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->zrc_screen_sequence_calibrate_msg_layout:I

    .line 182
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_sequence_calibrate_msg_layout:Landroid/widget/LinearLayout;

    .line 183
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->convertView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->zrc_screen_sequence_calibrate_finished_msg:I

    .line 184
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_sequence_calibrate_finished_msg:Landroid/widget/TextView;

    .line 185
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->convertView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->zrc_screen_sequence_calibrate_reset_msg:I

    .line 186
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_sequence_calibrate_reset_msg:Landroid/widget/TextView;

    .line 188
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->convertView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->zrc_screen_tv_left_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_left_layout:Landroid/widget/RelativeLayout;

    .line 189
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->convertView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->zrc_screen_tv_left_img_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_left_img_layout:Landroid/widget/FrameLayout;

    .line 190
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->convertView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->zrc_screen_tv_left_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_left_img:Landroid/widget/ImageView;

    .line 191
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->convertView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->zrc_screen_tv_left_txt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_left_txt:Landroid/widget/TextView;

    .line 192
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->convertView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->zrc_screen_tv_shadow_left_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_shadow_left_img:Landroid/widget/ImageView;

    .line 194
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->convertView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->zrc_screen_tv_center_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_layout:Landroid/widget/RelativeLayout;

    .line 195
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->convertView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->zrc_screen_tv_center_img_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_img_layout:Landroid/widget/FrameLayout;

    .line 196
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->convertView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->zrc_screen_tv_center_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_img:Landroid/widget/ImageView;

    .line 197
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->convertView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->zrc_screen_tv_center_txt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_txt:Landroid/widget/TextView;

    .line 198
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->convertView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->zrc_screen_tv_shadow_center_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_shadow_center_img:Landroid/widget/ImageView;

    .line 200
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->convertView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->zrc_screen_right_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_right_layout:Landroid/widget/RelativeLayout;

    .line 201
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->convertView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->zrc_screen_tv_right_img_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_right_img_layout:Landroid/widget/FrameLayout;

    .line 202
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->convertView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->zrc_screen_tv_right_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_right_img:Landroid/widget/ImageView;

    .line 203
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->convertView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->zrc_screen_tv_right_txt:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_right_txt:Landroid/widget/TextView;

    .line 204
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->convertView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->zrc_screen_tv_shadow_right_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_shadow_right_img:Landroid/widget/ImageView;

    .line 206
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->convertView:Landroid/view/View;

    sget v1, Lus/zoom/zrcbox/R$id;->zrc_screen_tv_exit_setup:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_exit_setup:Landroid/widget/TextView;

    .line 208
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->convertView:Landroid/view/View;

    new-instance v1, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$2;

    invoke-direct {v1, p0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$2;-><init>(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 219
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_sequence_msg:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_sequence_calibrate_msg_layout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 222
    iget v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->quantityOfScreens:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 223
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 226
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_img:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onCalibrateScreenSequenceResult(Ljava/lang/String;I)V
    .locals 1

    .line 509
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/model/Model;->isRequestIdForCurrentDevice(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-ne p2, p1, :cond_2

    .line 514
    :cond_1
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->onExitScreenSequenceCalibration()V

    :cond_2
    return-void
.end method

.method private onExitScreenSequenceCalibration()V
    .locals 3

    .line 305
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->requireFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 306
    sget v1, Lus/zoom/androidlib/R$anim;->zm_slide_in_bottom:I

    sget v2, Lus/zoom/androidlib/R$anim;->zm_slide_out_bottom:I

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    .line 308
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private onUpdateRoomScreenInfo()V
    .locals 7

    .line 495
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/model/Model;->getRoomScreenInfo()Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;

    move-result-object v0

    .line 496
    iget v1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->quantityOfScreens:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->getQuantityOfScreens()I

    move-result v3

    if-eq v1, v3, :cond_0

    const-string v1, "SettingArrangeDisplaysFragment"

    const-string v3, "quantityOfScreens changed from %d t0 %d"

    const/4 v4, 0x2

    .line 497
    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->quantityOfScreens:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->getQuantityOfScreens()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 498
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->onExitScreenSequenceCalibration()V

    return-void

    .line 502
    :cond_0
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->getCurrentScreen()I

    move-result v1

    iput v1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->currentScreen:I

    .line 503
    invoke-virtual {v0}, Lus/zoom/zrcsdk/model/ZRCRoomScreenInfo;->getQuantityOfScreens()I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->quantityOfScreens:I

    .line 504
    iput-boolean v2, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->viewClickEnable:Z

    .line 505
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->updateUI()V

    return-void
.end method

.method private setOnclickListener()V
    .locals 1

    .line 165
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_sequence_calibrate_finished_msg:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_sequence_calibrate_reset_msg:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_left_img:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_img:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_right_img:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_exit_setup:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->convertView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private startCenterAnimator()V
    .locals 6

    .line 377
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_img_layout:Landroid/widget/FrameLayout;

    const-string v1, "Y"

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 378
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    iget-object v3, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_img_layout:Landroid/widget/FrameLayout;

    .line 379
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    iget-object v4, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->context:Landroid/content/Context;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5, v4}, Lus/zoom/zrc/utils/Util;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v4

    add-float/2addr v3, v4

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 377
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 380
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 381
    iget v1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->currentScreen:I

    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->quantityOfScreens:I

    if-ge v2, v3, :cond_0

    .line 382
    new-instance v1, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$5;

    invoke-direct {v1, p0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$5;-><init>(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 389
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_0
    add-int/2addr v1, v4

    if-ne v1, v3, :cond_1

    .line 391
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 392
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 393
    invoke-direct {p0, v0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->swapCenterAndLastView(Landroid/animation/AnimatorSet$Builder;)V

    .line 394
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private startLeftAnimator()V
    .locals 10

    .line 443
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 444
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_left_img_layout:Landroid/widget/FrameLayout;

    const-string v2, "Y"

    const/4 v3, 0x2

    new-array v4, v3, [F

    .line 445
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v5

    const/4 v6, 0x0

    aput v5, v4, v6

    iget-object v5, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_left_img_layout:Landroid/widget/FrameLayout;

    .line 446
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getY()F

    move-result v5

    iget-object v7, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->context:Landroid/content/Context;

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-static {v8, v7}, Lus/zoom/zrc/utils/Util;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v7

    add-float/2addr v5, v7

    const/4 v7, 0x1

    aput v5, v4, v7

    .line 444
    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 447
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 448
    new-instance v2, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$7;

    invoke-direct {v2, p0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$7;-><init>(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 454
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 455
    iget v2, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->currentScreen:I

    add-int/2addr v2, v7

    iget v4, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->quantityOfScreens:I

    if-ne v2, v4, :cond_1

    .line 456
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->getAnimatorView()[Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 460
    :cond_0
    aget-object v4, v2, v6

    const-string v5, "Y"

    new-array v3, v3, [F

    aget-object v9, v2, v6

    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v9

    aput v9, v3, v6

    aget-object v6, v2, v6

    .line 461
    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v6

    iget-object v9, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->context:Landroid/content/Context;

    invoke-static {v8, v9}, Lus/zoom/zrc/utils/Util;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v8

    add-float/2addr v6, v8

    aput v6, v3, v7

    .line 460
    invoke-static {v4, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 462
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 463
    new-instance v4, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$8;

    invoke-direct {v4, p0, v2}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$8;-><init>(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;[Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 469
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 471
    :cond_1
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startOverAnimator()V
    .locals 10

    .line 541
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_left_img:Landroid/widget/ImageView;

    sget v1, Lus/zoom/zrcbox/R$drawable;->tv:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 542
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_img:Landroid/widget/ImageView;

    sget v1, Lus/zoom/zrcbox/R$drawable;->tv:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 543
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_right_img:Landroid/widget/ImageView;

    sget v1, Lus/zoom/zrcbox/R$drawable;->tv:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 545
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_shadow_left_img:Landroid/widget/ImageView;

    sget v1, Lus/zoom/zrcbox/R$drawable;->tv_shadow_far:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 546
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_shadow_center_img:Landroid/widget/ImageView;

    sget v1, Lus/zoom/zrcbox/R$drawable;->tv_shadow_far:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 547
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_shadow_right_img:Landroid/widget/ImageView;

    sget v1, Lus/zoom/zrcbox/R$drawable;->tv_shadow_far:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 549
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_left_txt:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->left:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 550
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_txt:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->center:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 551
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_right_txt:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->right:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 553
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-string v1, "x"

    const/4 v2, 0x2

    .line 554
    new-array v3, v2, [F

    iget-object v4, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_left_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getX()F

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    iget v4, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_img_layout_left_x:F

    const/4 v6, 0x1

    aput v4, v3, v6

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const-string v3, "y"

    .line 556
    new-array v4, v2, [F

    iget-object v7, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_left_img_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getY()F

    move-result v7

    aput v7, v4, v5

    iget v7, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_img_y:F

    aput v7, v4, v6

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 558
    iget-object v4, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_left_layout:Landroid/widget/RelativeLayout;

    new-array v7, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v7, v5

    invoke-static {v4, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 559
    iget-object v4, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_left_img_layout:Landroid/widget/FrameLayout;

    new-array v7, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v7, v5

    invoke-static {v4, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 560
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 561
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 562
    iget v3, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->quantityOfScreens:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 563
    iget-object v3, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_layout:Landroid/widget/RelativeLayout;

    const-string v4, "x"

    new-array v7, v2, [F

    .line 564
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getX()F

    move-result v8

    aput v8, v7, v5

    iget v8, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_img_layout_center_x:F

    aput v8, v7, v6

    .line 563
    invoke-static {v3, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 565
    iget-object v4, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_img_layout:Landroid/widget/FrameLayout;

    const-string v7, "Y"

    new-array v8, v2, [F

    .line 566
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getY()F

    move-result v9

    aput v9, v8, v5

    iget v9, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_img_y:F

    aput v9, v8, v6

    .line 565
    invoke-static {v4, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 567
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 570
    :cond_0
    iget-object v3, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_right_layout:Landroid/widget/RelativeLayout;

    const-string v4, "x"

    new-array v7, v2, [F

    .line 571
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getX()F

    move-result v8

    aput v8, v7, v5

    iget v8, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_img_layout_right_x:F

    aput v8, v7, v6

    .line 570
    invoke-static {v3, v4, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 572
    iget-object v4, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_right_img_layout:Landroid/widget/FrameLayout;

    const-string v7, "Y"

    new-array v2, v2, [F

    .line 573
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getY()F

    move-result v8

    aput v8, v2, v5

    iget v5, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_img_y:F

    aput v5, v2, v6

    .line 572
    invoke-static {v4, v7, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 574
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 575
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startRightAnimator()V
    .locals 6

    .line 312
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_right_img_layout:Landroid/widget/FrameLayout;

    const-string v1, "Y"

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 313
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    iget-object v3, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_right_img_layout:Landroid/widget/FrameLayout;

    .line 314
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    iget-object v4, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->context:Landroid/content/Context;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5, v4}, Lus/zoom/zrc/utils/Util;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v4

    add-float/2addr v3, v4

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 312
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 315
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 316
    iget v1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->currentScreen:I

    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->quantityOfScreens:I

    if-ge v2, v3, :cond_0

    .line 317
    new-instance v1, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$3;

    invoke-direct {v1, p0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$3;-><init>(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 324
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_0
    add-int/2addr v1, v4

    if-ne v1, v3, :cond_1

    .line 326
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 327
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    .line 328
    invoke-direct {p0, v0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->swapRightAndLastView(Landroid/animation/AnimatorSet$Builder;)V

    .line 329
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private swapCenterAndLastView(Landroid/animation/AnimatorSet$Builder;)V
    .locals 8

    .line 400
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->getAnimatorView()[Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 404
    aget-object v2, v0, v1

    const-string v3, "Y"

    const/4 v4, 0x2

    new-array v4, v4, [F

    aget-object v5, v0, v1

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    aput v5, v4, v1

    const/4 v5, 0x1

    aget-object v1, v0, v1

    .line 405
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    const/high16 v6, 0x41a00000    # 20.0f

    iget-object v7, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->context:Landroid/content/Context;

    invoke-static {v6, v7}, Lus/zoom/zrc/utils/Util;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v6

    add-float/2addr v1, v6

    aput v1, v4, v5

    .line 404
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 406
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 407
    new-instance v2, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$6;

    invoke-direct {v2, p0, v0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$6;-><init>(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;[Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 415
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private swapCenterAndLastViewImp([Landroid/view/View;)V
    .locals 7

    const-string v0, "x"

    const/4 v1, 0x2

    .line 419
    new-array v2, v1, [F

    iget-object v3, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getX()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_img_layout_center_x:F

    const/4 v5, 0x1

    aput v3, v2, v5

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v2, "x"

    .line 421
    new-array v3, v1, [F

    aget-object v6, p1, v5

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getX()F

    move-result v6

    aput v6, v3, v4

    iget v6, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_img_layout_right_x:F

    aput v6, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 423
    iget-object v3, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_layout:Landroid/widget/RelativeLayout;

    new-array v6, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v6, v4

    invoke-static {v3, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 424
    aget-object p1, p1, v5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    new-array v3, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v4

    invoke-static {p1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 425
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 426
    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, v4

    aput-object p1, v1, v5

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 427
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private swapLeftAnimator()V
    .locals 7

    const-string v0, "x"

    const/4 v1, 0x2

    .line 431
    new-array v2, v1, [F

    iget-object v3, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_left_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getX()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_img_layout_center_x:F

    const/4 v5, 0x1

    aput v3, v2, v5

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v2, "x"

    .line 433
    new-array v3, v1, [F

    iget-object v6, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getX()F

    move-result v6

    aput v6, v3, v4

    iget v6, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_img_layout_left_x:F

    aput v6, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 435
    iget-object v3, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_left_layout:Landroid/widget/RelativeLayout;

    new-array v6, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v6, v4

    invoke-static {v3, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 436
    iget-object v3, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_layout:Landroid/widget/RelativeLayout;

    new-array v6, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v6, v4

    invoke-static {v3, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 437
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 438
    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, v4

    aput-object v2, v1, v5

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 439
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private swapRight2Left()V
    .locals 10

    .line 365
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 366
    iget-object v1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_left_layout:Landroid/widget/RelativeLayout;

    const-string v2, "x"

    const/4 v3, 0x2

    new-array v4, v3, [F

    iget v5, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_img_layout_left_x:F

    const/4 v6, 0x0

    aput v5, v4, v6

    iget v5, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_img_layout_center_x:F

    const/4 v7, 0x1

    aput v5, v4, v7

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 368
    iget-object v2, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_layout:Landroid/widget/RelativeLayout;

    const-string v4, "x"

    new-array v5, v3, [F

    iget v8, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_img_layout_center_x:F

    aput v8, v5, v6

    iget v8, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_img_layout_right_x:F

    aput v8, v5, v7

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 370
    iget-object v4, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_right_layout:Landroid/widget/RelativeLayout;

    const-string v5, "x"

    new-array v8, v3, [F

    iget v9, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_img_layout_right_x:F

    aput v9, v8, v6

    iget v9, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_img_layout_left_x:F

    aput v9, v8, v7

    invoke-static {v4, v5, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const/4 v5, 0x3

    .line 372
    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v1, v5, v6

    aput-object v2, v5, v7

    aput-object v4, v5, v3

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 373
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private swapRightAndLastView(Landroid/animation/AnimatorSet$Builder;)V
    .locals 8

    .line 334
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->getAnimatorView()[Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 338
    aget-object v2, v0, v1

    const-string v3, "Y"

    const/4 v4, 0x2

    new-array v4, v4, [F

    aget-object v5, v0, v1

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v5

    aput v5, v4, v1

    const/4 v5, 0x1

    aget-object v1, v0, v1

    .line 339
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    const/high16 v6, 0x41a00000    # 20.0f

    iget-object v7, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->context:Landroid/content/Context;

    invoke-static {v6, v7}, Lus/zoom/zrc/utils/Util;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v6

    add-float/2addr v1, v6

    aput v1, v4, v5

    .line 338
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 340
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 341
    new-instance v2, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$4;

    invoke-direct {v2, p0, v0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment$4;-><init>(Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;[Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 349
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void
.end method

.method private swapRightAndLastViewImp([Landroid/view/View;)V
    .locals 7

    const-string v0, "x"

    const/4 v1, 0x2

    .line 353
    new-array v2, v1, [F

    iget-object v3, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_right_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getX()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_img_layout_center_x:F

    const/4 v5, 0x1

    aput v3, v2, v5

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v2, "x"

    .line 355
    new-array v3, v1, [F

    aget-object v6, p1, v5

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getX()F

    move-result v6

    aput v6, v3, v4

    iget v6, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_img_layout_right_x:F

    aput v6, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 357
    iget-object v3, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_right_layout:Landroid/widget/RelativeLayout;

    new-array v6, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v6, v4

    invoke-static {v3, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 358
    aget-object p1, p1, v5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    new-array v3, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v4

    invoke-static {p1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 359
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 360
    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, v4

    aput-object p1, v1, v5

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 361
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateUI()V
    .locals 8

    .line 519
    iget v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->quantityOfScreens:I

    const/16 v1, 0x8

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    .line 520
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 522
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 524
    :cond_1
    :goto_0
    iget v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->currentScreen:I

    const/4 v5, 0x1

    if-ne v0, v5, :cond_3

    .line 525
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_sequence_title:Landroid/widget/TextView;

    sget v3, Lus/zoom/zrcbox/R$string;->display_arrangement_question_for_1st_tv:I

    new-array v6, v5, [Ljava/lang/Object;

    iget v7, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->currentScreen:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p0, v3, v6}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_left_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 527
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_img:Landroid/widget/ImageView;

    iget v3, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->quantityOfScreens:I

    if-ne v3, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 528
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_right_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 529
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_sequence_msg:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_sequence_calibrate_msg_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 531
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->startOverAnimator()V

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    .line 533
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->finishCalibrateScreenSequence()V

    goto :goto_2

    :cond_4
    if-ne v0, v3, :cond_5

    .line 535
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_sequence_title:Landroid/widget/TextView;

    sget v1, Lus/zoom/zrcbox/R$string;->display_arrangement_question_for_other_tv:I

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->currentScreen:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 233
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 234
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p1

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p1, v0, v0, v0, v0}, Lus/zoom/zrcsdk/PTApp;->calibrateScreenSequence(IIII)I

    return-void
.end method

.method public declared-synchronized onClick(Landroid/view/View;)V
    .locals 4

    monitor-enter p0

    .line 246
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 247
    sget v0, Lus/zoom/zrcbox/R$id;->zrc_screen_tv_exit_setup:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 248
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1, v1, v1}, Lus/zoom/zrcsdk/PTApp;->calibrateScreenSequence(IIII)I

    .line 250
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->onExitScreenSequenceCalibration()V

    goto/16 :goto_0

    .line 252
    :cond_0
    sget v0, Lus/zoom/zrcbox/R$id;->zrc_screen_sequence_calibrate_finished_msg:I

    const/4 v2, 0x2

    if-ne p1, v0, :cond_1

    .line 253
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p1

    invoke-virtual {p1, v2, v1, v1, v1}, Lus/zoom/zrcsdk/PTApp;->calibrateScreenSequence(IIII)I

    .line 255
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->onExitScreenSequenceCalibration()V

    goto/16 :goto_0

    .line 257
    :cond_1
    sget v0, Lus/zoom/zrcbox/R$id;->zrc_screen_sequence_calibrate_reset_msg:I

    if-ne p1, v0, :cond_2

    .line 258
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p1

    invoke-virtual {p1, v1, v1, v1, v1}, Lus/zoom/zrcsdk/PTApp;->calibrateScreenSequence(IIII)I

    goto/16 :goto_0

    .line 261
    :cond_2
    sget v0, Lus/zoom/zrcbox/R$id;->zrc_screen_tv_left_img:I

    const/4 v3, 0x1

    if-ne p1, v0, :cond_3

    .line 262
    iget-boolean p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->viewClickEnable:Z

    if-eqz p1, :cond_5

    .line 263
    iput-boolean v1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->viewClickEnable:Z

    .line 264
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_left_img:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 265
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_left_txt:Landroid/widget/TextView;

    iget v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->currentScreen:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_left_img:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->tv_selected:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 267
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_left_img:Landroid/widget/ImageView;

    iget v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->currentScreen:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 268
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p1

    iget v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->currentScreen:I

    iget v1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->quantityOfScreens:I

    invoke-virtual {p1, v3, v0, v3, v1}, Lus/zoom/zrcsdk/PTApp;->calibrateScreenSequence(IIII)I

    .line 271
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->startLeftAnimator()V

    goto/16 :goto_0

    .line 274
    :cond_3
    sget v0, Lus/zoom/zrcbox/R$id;->zrc_screen_tv_center_img:I

    if-ne p1, v0, :cond_4

    .line 275
    iget-boolean p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->viewClickEnable:Z

    if-eqz p1, :cond_5

    .line 276
    iput-boolean v1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->viewClickEnable:Z

    .line 277
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_img:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 278
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_txt:Landroid/widget/TextView;

    iget v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->currentScreen:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_img:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->tv_selected:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 280
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_center_img:Landroid/widget/ImageView;

    iget v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->currentScreen:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 281
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p1

    iget v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->currentScreen:I

    iget v1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->quantityOfScreens:I

    invoke-virtual {p1, v3, v0, v2, v1}, Lus/zoom/zrcsdk/PTApp;->calibrateScreenSequence(IIII)I

    .line 284
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->startCenterAnimator()V

    goto :goto_0

    .line 287
    :cond_4
    sget v0, Lus/zoom/zrcbox/R$id;->zrc_screen_tv_right_img:I

    if-ne p1, v0, :cond_5

    .line 288
    iget-boolean p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->viewClickEnable:Z

    if-eqz p1, :cond_5

    .line 289
    iput-boolean v1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->viewClickEnable:Z

    .line 290
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_right_img:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 291
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_right_img:Landroid/widget/ImageView;

    sget v0, Lus/zoom/zrcbox/R$drawable;->tv_selected:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 292
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_right_img:Landroid/widget/ImageView;

    iget v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->currentScreen:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 293
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->zrc_screen_tv_right_txt:Landroid/widget/TextView;

    iget v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->currentScreen:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p1

    iget v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->currentScreen:I

    iget v1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->quantityOfScreens:I

    iget v2, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->quantityOfScreens:I

    invoke-virtual {p1, v3, v0, v1, v2}, Lus/zoom/zrcsdk/PTApp;->calibrateScreenSequence(IIII)I

    .line 297
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->startRightAnimator()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :cond_5
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 130
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    sget p1, Lus/zoom/zrcbox/R$style;->ZRCArrangeDisplaysFragmentTheme:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->setStyle(II)V

    const/4 p1, 0x0

    .line 132
    iput-boolean p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->viewClickEnable:Z

    .line 133
    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getQuantityOfScreens()I

    move-result v1

    iput v1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->quantityOfScreens:I

    .line 134
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->context:Landroid/content/Context;

    .line 135
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object v1

    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v2

    invoke-virtual {v1, v2}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerOnPropertyChangedCallback(Landroidx/databinding/BaseObservable;)V

    .line 136
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->getRetainFragment()Lus/zoom/zrc/base/app/ZRCRetainFragment;

    move-result-object v1

    new-array v0, v0, [Lus/zoom/zrc/base/notification/NotificationEvent;

    sget-object v2, Lus/zoom/zrc/base/notification/ModelEvent;->OnCalibrateScreenSequenceResult:Lus/zoom/zrc/base/notification/ModelEvent;

    aput-object v2, v0, p1

    invoke-virtual {v1, v0}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->registerNotification([Lus/zoom/zrc/base/notification/NotificationEvent;)V

    .line 137
    invoke-virtual {p0, p1}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->setCancelable(Z)V

    .line 139
    invoke-static {}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->getInstance()Lus/zoom/zrc/base/app/ZRCUIElementsManager;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->uiListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->addListener(Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 150
    iget-object p3, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->convertView:Landroid/view/View;

    if-nez p3, :cond_0

    .line 151
    sget p3, Lus/zoom/zrcbox/R$layout;->zrc_screen_sequence_calibration_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->convertView:Landroid/view/View;

    .line 153
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->initView()V

    .line 154
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->setOnclickListener()V

    .line 155
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->onUpdateRoomScreenInfo()V

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 159
    iget-object p2, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->convertView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 161
    :cond_1
    :goto_0
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->convertView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 144
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onDestroy()V

    .line 145
    invoke-static {}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->getInstance()Lus/zoom/zrc/base/app/ZRCUIElementsManager;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->uiListener:Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListenerAdapter;

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCUIElementsManager;->removeListener(Lus/zoom/zrc/base/app/ZRCUIElementsManager$ZRCUIElementListener;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 586
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 587
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getPTApp()Lus/zoom/zrcsdk/PTApp;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0, v0, v0}, Lus/zoom/zrcsdk/PTApp;->calibrateScreenSequence(IIII)I

    return-void
.end method

.method public onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 1

    .line 120
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onReceivedNotificationInActive(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    .line 121
    sget-object v0, Lus/zoom/zrc/base/notification/ModelEvent;->OnCalibrateScreenSequenceResult:Lus/zoom/zrc/base/notification/ModelEvent;

    if-ne p1, v0, :cond_0

    const-string p1, "requestId"

    .line 122
    invoke-static {p2, p1}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->valueFromMap(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "action"

    .line 123
    invoke-static {p2, v0}, Lus/zoom/zrc/base/notification/NotificationArgumentUtils;->intFromMap(Ljava/lang/Object;Ljava/lang/String;)I

    move-result p2

    .line 124
    invoke-direct {p0, p1, p2}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->onCalibrateScreenSequenceResult(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V
    .locals 0

    .line 112
    invoke-super {p0, p1, p2}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onReceivedPropertyChangedCallbackInActive(Landroidx/databinding/Observable;I)V

    .line 113
    sget p1, Landroidx/databinding/library/baseAdapters/BR;->roomScreenInfo:I

    if-ne p1, p2, :cond_0

    .line 114
    invoke-direct {p0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->onUpdateRoomScreenInfo()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 240
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onStart()V

    .line 241
    invoke-virtual {p0}, Lus/zoom/zrc/settings/SettingArrangeDisplaysFragment;->requestFullScreenLayout()V

    return-void
.end method
