.class Lus/zoom/zrc/PTActivity$2;
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

    .line 165
    iput-object p1, p0, Lus/zoom/zrc/PTActivity$2;->this$0:Lus/zoom/zrc/PTActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 169
    iget-object v0, p0, Lus/zoom/zrc/PTActivity$2;->this$0:Lus/zoom/zrc/PTActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lus/zoom/zrc/PTActivity;->access$100(Lus/zoom/zrc/PTActivity;Lus/zoom/zrcsdk/model/ZRCMeetingListItem;Z)V

    .line 170
    iget-object v0, p0, Lus/zoom/zrc/PTActivity$2;->this$0:Lus/zoom/zrc/PTActivity;

    invoke-static {v0}, Lus/zoom/zrc/PTActivity;->access$300(Lus/zoom/zrc/PTActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/PTActivity$2;->this$0:Lus/zoom/zrc/PTActivity;

    invoke-static {v1}, Lus/zoom/zrc/PTActivity;->access$200(Lus/zoom/zrc/PTActivity;)Ljava/lang/Runnable;

    move-result-object v1

    sget-wide v2, Lus/zoom/zrcsdk/model/meetingalert/MAConst;->TASK_REFRESH_INTERVAL_FOR_NMA:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
