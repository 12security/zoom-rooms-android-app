.class final Lus/zoom/androidlib/widget/ZMToast$1;
.super Ljava/lang/Object;
.source "ZMToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/widget/ZMToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 23
    invoke-static {}, Lus/zoom/androidlib/widget/ZMToast;->access$000()Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    invoke-static {}, Lus/zoom/androidlib/widget/ZMToast;->access$000()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method
