.class Lus/zoom/zrc/view/ParticipantsListView$7;
.super Ljava/lang/Object;
.source "ParticipantsListView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/ParticipantsListView;->showUnlockMeetingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/ParticipantsListView;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/ParticipantsListView;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lus/zoom/zrc/view/ParticipantsListView$7;->this$0:Lus/zoom/zrc/view/ParticipantsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 486
    invoke-static {}, Lus/zoom/zrcsdk/ZRCSdk;->getInstance()Lus/zoom/zrcsdk/ZRCSdk;

    move-result-object p1

    invoke-virtual {p1}, Lus/zoom/zrcsdk/ZRCSdk;->getConfApp()Lus/zoom/zrcsdk/ConfApp;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lus/zoom/zrcsdk/ConfApp;->lockMeeting(Z)I

    return-void
.end method
