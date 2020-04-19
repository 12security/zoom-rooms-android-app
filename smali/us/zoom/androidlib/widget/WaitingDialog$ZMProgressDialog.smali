.class Lus/zoom/androidlib/widget/WaitingDialog$ZMProgressDialog;
.super Landroid/app/ProgressDialog;
.source "WaitingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/widget/WaitingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ZMProgressDialog"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 177
    invoke-direct {p0, p1, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public show()V
    .locals 4

    .line 186
    invoke-virtual {p0}, Lus/zoom/androidlib/widget/WaitingDialog$ZMProgressDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lus/zoom/androidlib/app/ZMActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0}, Lus/zoom/androidlib/app/ZMActivity;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 195
    invoke-static {}, Lus/zoom/androidlib/widget/WaitingDialog;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ZMProgressDialog.show(), exception"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v1}, Lus/zoom/androidlib/util/ZMLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 188
    :cond_1
    :goto_0
    invoke-static {}, Lus/zoom/androidlib/widget/WaitingDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ZMProgressDialog.show(), activity is not in foreground"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lus/zoom/androidlib/util/ZMLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
