.class Lus/zoom/zrc/base/app/ZRCRetainFragment$2;
.super Lus/zoom/zrc/base/notification/INotification;
.source "ZRCRetainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/base/app/ZRCRetainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/base/app/ZRCRetainFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/base/app/ZRCRetainFragment;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment$2;->this$0:Lus/zoom/zrc/base/app/ZRCRetainFragment;

    invoke-direct {p0}, Lus/zoom/zrc/base/notification/INotification;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCRetainFragment$2;->this$0:Lus/zoom/zrc/base/app/ZRCRetainFragment;

    invoke-static {v0, p1, p2}, Lus/zoom/zrc/base/app/ZRCRetainFragment;->access$100(Lus/zoom/zrc/base/app/ZRCRetainFragment;Lus/zoom/zrc/base/notification/NotificationEvent;Ljava/lang/Object;)V

    return-void
.end method
