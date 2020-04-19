.class Lus/zoom/androidlib/util/HeadsetUtil$2;
.super Ljava/lang/Object;
.source "HeadsetUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/androidlib/util/HeadsetUtil;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/androidlib/util/HeadsetUtil;


# direct methods
.method constructor <init>(Lus/zoom/androidlib/util/HeadsetUtil;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lus/zoom/androidlib/util/HeadsetUtil$2;->this$0:Lus/zoom/androidlib/util/HeadsetUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 220
    iget-object v0, p0, Lus/zoom/androidlib/util/HeadsetUtil$2;->this$0:Lus/zoom/androidlib/util/HeadsetUtil;

    invoke-static {v0}, Lus/zoom/androidlib/util/HeadsetUtil;->access$500(Lus/zoom/androidlib/util/HeadsetUtil;)V

    return-void
.end method
