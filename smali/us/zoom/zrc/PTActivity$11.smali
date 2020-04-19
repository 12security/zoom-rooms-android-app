.class Lus/zoom/zrc/PTActivity$11;
.super Ljava/lang/Object;
.source "PTActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/PTActivity;->showWaitingForHostDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/PTActivity;


# direct methods
.method constructor <init>(Lus/zoom/zrc/PTActivity;)V
    .locals 0

    .line 866
    iput-object p1, p0, Lus/zoom/zrc/PTActivity$11;->this$0:Lus/zoom/zrc/PTActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 870
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p2

    invoke-virtual {p2}, Lus/zoom/zrcsdk/ConfApp;->cancelWaitingForHost()I

    .line 871
    iget-object p2, p0, Lus/zoom/zrc/PTActivity$11;->this$0:Lus/zoom/zrc/PTActivity;

    invoke-virtual {p2}, Lus/zoom/zrc/PTActivity;->dismissWaitingDialog()V

    .line 872
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
