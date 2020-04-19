.class Lus/zoom/zrcsdk/CallBackUI$188;
.super Ljava/lang/Object;
.source "CallBackUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrcsdk/CallBackUI;->onShowSharingInstructionResult(ILjava/lang/String;ZZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrcsdk/CallBackUI;

.field final synthetic val$instruction_type:I

.field final synthetic val$is_laptop_instruction:Z

.field final synthetic val$is_show_instruction:Z

.field final synthetic val$result:I

.field final synthetic val$switch_to_normal_meeting:Z


# direct methods
.method constructor <init>(Lus/zoom/zrcsdk/CallBackUI;IZZZI)V
    .locals 0

    .line 3055
    iput-object p1, p0, Lus/zoom/zrcsdk/CallBackUI$188;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    iput p2, p0, Lus/zoom/zrcsdk/CallBackUI$188;->val$result:I

    iput-boolean p3, p0, Lus/zoom/zrcsdk/CallBackUI$188;->val$is_show_instruction:Z

    iput-boolean p4, p0, Lus/zoom/zrcsdk/CallBackUI$188;->val$is_laptop_instruction:Z

    iput-boolean p5, p0, Lus/zoom/zrcsdk/CallBackUI$188;->val$switch_to_normal_meeting:Z

    iput p6, p0, Lus/zoom/zrcsdk/CallBackUI$188;->val$instruction_type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 3058
    iget-object v0, p0, Lus/zoom/zrcsdk/CallBackUI$188;->this$0:Lus/zoom/zrcsdk/CallBackUI;

    invoke-static {v0}, Lus/zoom/zrcsdk/CallBackUI;->access$400(Lus/zoom/zrcsdk/CallBackUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lus/zoom/zrcsdk/IMeetingEventListener;

    .line 3059
    iget v3, p0, Lus/zoom/zrcsdk/CallBackUI$188;->val$result:I

    iget-boolean v4, p0, Lus/zoom/zrcsdk/CallBackUI$188;->val$is_show_instruction:Z

    iget-boolean v5, p0, Lus/zoom/zrcsdk/CallBackUI$188;->val$is_laptop_instruction:Z

    iget-boolean v6, p0, Lus/zoom/zrcsdk/CallBackUI$188;->val$switch_to_normal_meeting:Z

    iget v7, p0, Lus/zoom/zrcsdk/CallBackUI$188;->val$instruction_type:I

    invoke-interface/range {v2 .. v7}, Lus/zoom/zrcsdk/IMeetingEventListener;->onShowSharingInstructionResult(IZZZI)V

    goto :goto_0

    :cond_0
    return-void
.end method
