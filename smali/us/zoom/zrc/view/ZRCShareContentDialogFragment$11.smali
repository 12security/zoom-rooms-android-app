.class Lus/zoom/zrc/view/ZRCShareContentDialogFragment$11;
.super Ljava/lang/Object;
.source "ZRCShareContentDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ZRCShareContentDialogFragment;->showStopMultiShareAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ZRCShareContentDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ZRCShareContentDialogFragment;)V
    .locals 0

    .line 1611
    iput-object p1, p0, Lus/zoom/zrc/view/ZRCShareContentDialogFragment$11;->this$0:Lus/zoom/zrc/view/ZRCShareContentDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "cancel disabling multi share"

    const/4 p2, 0x0

    .line 1614
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lus/zoom/zrcsdk/util/ZRCLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
