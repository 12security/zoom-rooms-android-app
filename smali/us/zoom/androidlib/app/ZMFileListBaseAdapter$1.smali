.class Lus/zoom/androidlib/app/ZMFileListBaseAdapter$1;
.super Ljava/lang/Object;
.source "ZMFileListBaseAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->showWaitingDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/app/ZMFileListBaseAdapter;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter$1;->this$0:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 351
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter$1;->this$0:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    iget-object p1, p1, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mWaitingDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter$1;->this$0:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    iget-object p1, p1, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 354
    :cond_0
    iget-object p1, p0, Lus/zoom/androidlib/app/ZMFileListBaseAdapter$1;->this$0:Lus/zoom/androidlib/app/ZMFileListBaseAdapter;

    const/4 v0, 0x0

    iput-object v0, p1, Lus/zoom/androidlib/app/ZMFileListBaseAdapter;->mWaitingDialog:Landroid/app/ProgressDialog;

    return-void
.end method
