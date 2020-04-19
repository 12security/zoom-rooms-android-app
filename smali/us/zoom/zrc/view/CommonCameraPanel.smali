.class public Lus/zoom/zrc/view/CommonCameraPanel;
.super Landroid/widget/RelativeLayout;
.source "CommonCameraPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/zoom/zrc/view/CommonCameraPanel$CommonCameraPanelListener;
    }
.end annotation


# instance fields
.field public cameraControlAction:I

.field private lCommonCameraPanelListener:Lus/zoom/zrc/view/CommonCameraPanel$CommonCameraPanelListener;

.field private mBtnGiveUp:Landroid/widget/ImageView;

.field private mBtnZoomIn:Landroid/widget/ImageView;

.field private mBtnZoomOut:Landroid/widget/ImageView;

.field private mIvDown:Landroid/widget/ImageView;

.field private mIvLeft:Landroid/widget/ImageView;

.field private mIvRight:Landroid/widget/ImageView;

.field private mIvUp:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, v0, v1}, Lus/zoom/zrc/view/CommonCameraPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lus/zoom/zrc/view/CommonCameraPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0}, Lus/zoom/zrc/view/CommonCameraPanel;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 54
    invoke-virtual {p0}, Lus/zoom/zrc/view/CommonCameraPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$layout;->common_camera_panel:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 55
    sget v1, Lus/zoom/zrcbox/R$id;->btn_zoom_out:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mBtnZoomOut:Landroid/widget/ImageView;

    .line 56
    sget v1, Lus/zoom/zrcbox/R$id;->btn_zoom_in:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mBtnZoomIn:Landroid/widget/ImageView;

    .line 57
    sget v1, Lus/zoom/zrcbox/R$id;->iv_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mIvLeft:Landroid/widget/ImageView;

    .line 58
    sget v1, Lus/zoom/zrcbox/R$id;->iv_right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mIvRight:Landroid/widget/ImageView;

    .line 59
    sget v1, Lus/zoom/zrcbox/R$id;->iv_up:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mIvUp:Landroid/widget/ImageView;

    .line 60
    sget v1, Lus/zoom/zrcbox/R$id;->iv_down:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mIvDown:Landroid/widget/ImageView;

    .line 62
    iget-object v0, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mBtnZoomIn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 63
    iget-object v0, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mBtnZoomOut:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 64
    iget-object v0, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mIvLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 65
    iget-object v0, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mIvRight:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 66
    iget-object v0, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mIvUp:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 67
    iget-object v0, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mIvDown:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private setCameraMoveEnable(Z)V
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraMoveEnable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mIvLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 147
    iget-object v0, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mIvRight:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 148
    iget-object v0, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mIvUp:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 149
    iget-object v0, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mIvDown:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 151
    iget-object p1, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mIvLeft:Landroid/widget/ImageView;

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->setAlphaFilterTransparent(Landroid/widget/ImageView;)V

    .line 152
    iget-object p1, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mIvRight:Landroid/widget/ImageView;

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->setAlphaFilterTransparent(Landroid/widget/ImageView;)V

    .line 153
    iget-object p1, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mIvUp:Landroid/widget/ImageView;

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->setAlphaFilterTransparent(Landroid/widget/ImageView;)V

    .line 154
    iget-object p1, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mIvDown:Landroid/widget/ImageView;

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->setAlphaFilterTransparent(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mIvLeft:Landroid/widget/ImageView;

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->setAlphaFilterGray(Landroid/widget/ImageView;)V

    .line 157
    iget-object p1, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mIvRight:Landroid/widget/ImageView;

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->setAlphaFilterGray(Landroid/widget/ImageView;)V

    .line 158
    iget-object p1, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mIvUp:Landroid/widget/ImageView;

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->setAlphaFilterGray(Landroid/widget/ImageView;)V

    .line 159
    iget-object p1, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mIvDown:Landroid/widget/ImageView;

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->setAlphaFilterGray(Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method private setCameraZoomEnable(Z)V
    .locals 2

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraZoomEnable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mBtnZoomOut:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 166
    iget-object v0, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mBtnZoomIn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mBtnZoomOut:Landroid/widget/ImageView;

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->setAlphaFilterTransparent(Landroid/widget/ImageView;)V

    .line 169
    iget-object p1, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mBtnZoomIn:Landroid/widget/ImageView;

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->setAlphaFilterTransparent(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mBtnZoomOut:Landroid/widget/ImageView;

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->setAlphaFilterGray(Landroid/widget/ImageView;)V

    .line 172
    iget-object p1, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mBtnZoomIn:Landroid/widget/ImageView;

    invoke-static {p1}, Lus/zoom/zrc/utils/Util;->setAlphaFilterGray(Landroid/widget/ImageView;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getCameraControlActionFromView(Landroid/view/View;)I
    .locals 1

    .line 119
    iget-object v0, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mBtnZoomOut:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x5

    return p1

    .line 121
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mBtnZoomIn:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x4

    return p1

    .line 123
    :cond_1
    iget-object v0, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mIvLeft:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    return p1

    .line 125
    :cond_2
    iget-object v0, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mIvRight:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    return p1

    .line 127
    :cond_3
    iget-object v0, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mIvUp:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    return p1

    .line 129
    :cond_4
    iget-object v0, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mIvDown:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, -0x1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "hahahha"

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cameraControlAction2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/CommonCameraPanel;->getCameraControlActionFromView(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p0, p1}, Lus/zoom/zrc/view/CommonCameraPanel;->getCameraControlActionFromView(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lus/zoom/zrc/view/CommonCameraPanel;->cameraControlAction:I

    .line 84
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 98
    :pswitch_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 104
    iget-object p1, p0, Lus/zoom/zrc/view/CommonCameraPanel;->lCommonCameraPanelListener:Lus/zoom/zrc/view/CommonCameraPanel$CommonCameraPanelListener;

    invoke-interface {p1}, Lus/zoom/zrc/view/CommonCameraPanel$CommonCameraPanelListener;->ActionUp()V

    goto :goto_0

    .line 86
    :pswitch_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 93
    iget-object p1, p0, Lus/zoom/zrc/view/CommonCameraPanel;->lCommonCameraPanelListener:Lus/zoom/zrc/view/CommonCameraPanel$CommonCameraPanelListener;

    invoke-interface {p1}, Lus/zoom/zrc/view/CommonCameraPanel$CommonCameraPanelListener;->ActionDown()V

    :goto_0
    :pswitch_2
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setCommonCameraPanelListener(Lus/zoom/zrc/view/CommonCameraPanel$CommonCameraPanelListener;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lus/zoom/zrc/view/CommonCameraPanel;->lCommonCameraPanelListener:Lus/zoom/zrc/view/CommonCameraPanel$CommonCameraPanelListener;

    return-void
.end method

.method public updateCameraControlStatus(Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mBtnZoomOut:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mBtnZoomIn:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mIvLeft:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mIvRight:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mIvUp:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lus/zoom/zrc/view/CommonCameraPanel;->mIvDown:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->isCanMoveCamera()Z

    move-result v0

    invoke-direct {p0, v0}, Lus/zoom/zrc/view/CommonCameraPanel;->setCameraMoveEnable(Z)V

    .line 141
    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCCameraControlStatus;->isCanZoomCamera()Z

    move-result p1

    invoke-direct {p0, p1}, Lus/zoom/zrc/view/CommonCameraPanel;->setCameraZoomEnable(Z)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "updateCameraControlStatus"

    const-string v0, "null object"

    const/4 v1, 0x0

    .line 137
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
