.class Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment$1;
.super Ljava/lang/Object;
.source "RecordingConsentAlertDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment$1;->this$0:Lus/zoom/zrc/view/RecordingConsentAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "user do agree recording consent"

    const/4 p2, 0x0

    .line 23
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    invoke-static {}, Lus/zoom/zrc/model/Model;->getDefault()Lus/zoom/zrc/model/Model;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lus/zoom/zrc/model/Model;->requestAgreeRecordingConsent(Z)Z

    return-void
.end method
