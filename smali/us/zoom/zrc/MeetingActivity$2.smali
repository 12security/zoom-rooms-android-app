.class Lus/zoom/zrc/MeetingActivity$2;
.super Ljava/lang/Object;
.source "MeetingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/MeetingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/MeetingActivity;


# direct methods
.method constructor <init>(Lus/zoom/zrc/MeetingActivity;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lus/zoom/zrc/MeetingActivity$2;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 168
    iget-object p1, p0, Lus/zoom/zrc/MeetingActivity$2;->this$0:Lus/zoom/zrc/MeetingActivity;

    invoke-static {p1}, Lus/zoom/zrc/phonecall/SipPhoneCallActivity;->show(Landroid/content/Context;)V

    return-void
.end method
