.class Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$1;
.super Ljava/lang/Object;
.source "ZRPAttendeeEmailsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;->onBindViewHolder(Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$AttendeeEmailViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;

.field final synthetic val$attendeeEmailItem:Ljava/lang/String;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;ILjava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$1;->this$0:Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;

    iput p2, p0, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$1;->val$position:I

    iput-object p3, p0, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$1;->val$attendeeEmailItem:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 54
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$1;->this$0:Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;

    invoke-static {p1}, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;->access$100(Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 55
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$1;->this$0:Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;

    invoke-static {p1}, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;->access$200(Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;)Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$OnAttendeeEmailDeleteListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$1;->this$0:Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;

    invoke-static {p1}, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;->access$200(Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;)Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$OnAttendeeEmailDeleteListener;

    move-result-object p1

    iget-object v0, p0, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$1;->val$attendeeEmailItem:Ljava/lang/String;

    invoke-interface {p1, v0}, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$OnAttendeeEmailDeleteListener;->onAttendeeEmailDelete(Ljava/lang/String;)V

    .line 58
    :cond_0
    iget-object p1, p0, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter$1;->this$0:Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;

    invoke-virtual {p1}, Lus/zoom/zrp/view/ZRPAttendeeEmailsAdapter;->notifyDataSetChanged()V

    return-void
.end method
