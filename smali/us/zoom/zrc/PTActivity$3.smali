.class Lus/zoom/zrc/PTActivity$3;
.super Ljava/lang/Object;
.source "PTActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/PTActivity;
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

    .line 174
    iput-object p1, p0, Lus/zoom/zrc/PTActivity$3;->this$0:Lus/zoom/zrc/PTActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 177
    iget-object v0, p0, Lus/zoom/zrc/PTActivity$3;->this$0:Lus/zoom/zrc/PTActivity;

    invoke-static {v0}, Lus/zoom/zrc/PTActivity;->access$400(Lus/zoom/zrc/PTActivity;)V

    const-string v0, "PTActivity"

    const-string v1, "pt menu auto roll back"

    const/4 v2, 0x0

    .line 178
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lus/zoom/zrcsdk/util/ZRCLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lus/zoom/zrc/PTActivity$3;->this$0:Lus/zoom/zrc/PTActivity;

    invoke-static {v0}, Lus/zoom/zrc/PTActivity;->access$300(Lus/zoom/zrc/PTActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/PTActivity$3;->this$0:Lus/zoom/zrc/PTActivity;

    invoke-static {v1}, Lus/zoom/zrc/PTActivity;->access$500(Lus/zoom/zrc/PTActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
