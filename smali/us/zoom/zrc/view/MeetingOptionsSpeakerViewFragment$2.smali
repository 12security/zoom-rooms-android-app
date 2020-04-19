.class Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$2;
.super Ljava/lang/Object;
.source "MeetingOptionsSpeakerViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$2;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 254
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$2;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$300(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$202(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;I)I

    .line 255
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$2;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {v0}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$300(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$402(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;I)I

    .line 256
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$2;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$502(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    .line 257
    iget-object v0, p0, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment$2;->this$0:Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;

    invoke-static {}, Lus/zoom/zrc/model/AppModel;->getInstance()Lus/zoom/zrc/model/AppModel;

    move-result-object v1

    invoke-virtual {v1}, Lus/zoom/zrc/model/AppModel;->getVideoThumbInfo()Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;->access$600(Lus/zoom/zrc/view/MeetingOptionsSpeakerViewFragment;Lus/zoom/zrcsdk/model/ZRCVideoThumbInfo;)V

    return-void
.end method
