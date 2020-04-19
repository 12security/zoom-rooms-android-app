.class public Lus/zoom/zrc/view/ParticipantsBaseDialogFragment;
.super Lus/zoom/zrc/base/app/ZRCDialogFragment;
.source "ParticipantsBaseDialogFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ParticipantsBaseDialog"


# instance fields
.field private isTablet:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 31
    invoke-static {p1}, Lus/zoom/androidlib/util/UIUtil;->isTablet(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lus/zoom/zrc/view/ParticipantsBaseDialogFragment;->isTablet:Z

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 70
    invoke-super {p0, p1}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 72
    invoke-virtual {p0, v0}, Lus/zoom/zrc/view/ParticipantsBaseDialogFragment;->setCanceledOnTouchOutside(Z)V

    .line 73
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x400

    .line 75
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 76
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 77
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    const v0, 0x106000d

    .line 78
    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_0
    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 36
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsBaseDialogFragment;->requestLargeLayout()V

    .line 37
    invoke-super {p0}, Lus/zoom/zrc/base/app/ZRCDialogFragment;->onResume()V

    return-void
.end method

.method protected requestLargeLayout()V
    .locals 4

    .line 41
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsBaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "ParticipantsBaseDialog"

    const-string v2, "requestLargeLayout dialog has not init yet!"

    .line 43
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 47
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "ParticipantsBaseDialog"

    const-string v2, "requestLargeLayout window has not init yet!"

    .line 49
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 53
    :cond_1
    iget-boolean v2, p0, Lus/zoom/zrc/view/ParticipantsBaseDialogFragment;->isTablet:Z

    if-eqz v2, :cond_3

    .line 54
    invoke-virtual {p0}, Lus/zoom/zrc/view/ParticipantsBaseDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v0, "ParticipantsBaseDialog"

    const-string v2, "requestLargeLayout() called"

    .line 56
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 59
    :cond_2
    invoke-static {v2}, Lus/zoom/zrc/utils/Util;->getWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    .line 60
    invoke-static {v2}, Lus/zoom/zrc/utils/Util;->getHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f59999a    # 0.85f

    mul-float v1, v1, v3

    float-to-int v1, v1

    const v3, 0x3f733333    # 0.95f

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    .line 63
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    :goto_0
    return-void
.end method
