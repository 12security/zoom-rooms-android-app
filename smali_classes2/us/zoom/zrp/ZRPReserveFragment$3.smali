.class Lus/zoom/zrp/ZRPReserveFragment$3;
.super Ljava/lang/Object;
.source "ZRPReserveFragment.java"

# interfaces
.implements Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$OnAttendeeEmailDeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/ZRPReserveFragment;->initAddAttendeesViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/ZRPReserveFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrp/ZRPReserveFragment;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$3;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttendeeEmailDelete(Ljava/lang/String;)V
    .locals 0

    .line 434
    iget-object p1, p0, Lus/zoom/zrp/ZRPReserveFragment$3;->this$0:Lus/zoom/zrp/ZRPReserveFragment;

    invoke-static {p1}, Lus/zoom/zrp/ZRPReserveFragment;->access$400(Lus/zoom/zrp/ZRPReserveFragment;)V

    return-void
.end method
