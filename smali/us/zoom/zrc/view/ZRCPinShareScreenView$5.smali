.class Lus/zoom/zrc/view/ZRCPinShareScreenView$5;
.super Ljava/lang/Object;
.source "ZRCPinShareScreenView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ZRCPinShareScreenView;->updateScreenView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ZRCPinShareScreenView;

.field final synthetic val$isCurrentScreenAudioShareMuted:Z


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ZRCPinShareScreenView;Z)V
    .locals 0

    .line 356
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView$5;->this$0:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    iput-boolean p2, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView$5;->val$isCurrentScreenAudioShareMuted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 359
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView$5;->this$0:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->access$400(Lus/zoom/zrc/view/ZRCPinShareScreenView;)Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/model/ZRCPinStatusOfScreen;->getPinnedShareSourceId()I

    move-result p1

    const-string v0, "requestMuteUserAudioShare, shareSourceId=%d, isMute=%b"

    const/4 v1, 0x2

    .line 360
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView$5;->val$isCurrentScreenAudioShareMuted:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object v0

    iget-boolean v1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView$5;->val$isCurrentScreenAudioShareMuted:Z

    xor-int/2addr v1, v3

    invoke-virtual {v0, p1, v1}, Lus/zoom/zrc/model/Model;->requestMuteUserAudioShare(IZ)Z

    .line 362
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView$5;->this$0:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    invoke-virtual {p1}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lus/zoom/androidlib/util/AccessibilityUtil;->isSpokenFeedbackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 363
    iget-object p1, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView$5;->this$0:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    invoke-static {p1}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->access$700(Lus/zoom/zrc/view/ZRCPinShareScreenView;)Landroid/widget/TextView;

    move-result-object p1

    iget-boolean v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView$5;->val$isCurrentScreenAudioShareMuted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView$5;->this$0:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    .line 365
    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->unmute_current_share:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/view/ZRCPinShareScreenView$5;->this$0:Lus/zoom/zrc/view/ZRCPinShareScreenView;

    .line 366
    invoke-virtual {v0}, Lus/zoom/zrc/view/ZRCPinShareScreenView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lus/zoom/zrcbox/R$string;->mute_current_share:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 363
    :goto_0
    invoke-static {p1, v0}, Lus/zoom/androidlib/util/AccessibilityUtil;->announceForAccessibilityCompat(Landroid/view/View;Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
