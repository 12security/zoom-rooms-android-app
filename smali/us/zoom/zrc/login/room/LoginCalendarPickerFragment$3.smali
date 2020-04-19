.class Lus/zoom/zrc/login/room/LoginCalendarPickerFragment$3;
.super Ljava/lang/Object;
.source "LoginCalendarPickerFragment.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment$3;->this$0:Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 121
    invoke-static {}, Lus/zoom/zrc/login/LoginUsageTrack;->sendRefreshCalendar()V

    .line 122
    iget-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment$3;->this$0:Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;

    invoke-static {v0}, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;->access$300(Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;)Lus/zoom/zrc/login/LoginContract$IPresenter;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerFragment$3;->this$0:Lus/zoom/zrc/login/room/LoginCalendarPickerFragment;

    invoke-interface {v0, v1}, Lus/zoom/zrc/login/LoginContract$IPresenter;->refreshCalendarList(Lus/zoom/zrc/login/LoginContract$IRefreshCalendarCallback;)V

    return-void
.end method
