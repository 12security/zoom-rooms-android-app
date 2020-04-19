.class Lus/zoom/zrc/settings/SettingMicrophoneFragment$11;
.super Ljava/lang/Object;
.source "SettingMicrophoneFragment.java"

# interfaces
.implements Lus/zoom/zrc/view/MicrophoneVolumeView$onStopTrackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingMicrophoneFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/SettingMicrophoneFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment$11;->this$0:Lus/zoom/zrc/settings/SettingMicrophoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStopTrack(F)V
    .locals 6

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    float-to-long v0, p1

    .line 291
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment$11;->this$0:Lus/zoom/zrc/settings/SettingMicrophoneFragment;

    invoke-static {p1}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->access$900(Lus/zoom/zrc/settings/SettingMicrophoneFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v2, p0, Lus/zoom/zrc/settings/SettingMicrophoneFragment$11;->this$0:Lus/zoom/zrc/settings/SettingMicrophoneFragment;

    sget v3, Lus/zoom/zrcbox/R$string;->zrc_setting_volume:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Lus/zoom/zrc/settings/SettingMicrophoneFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
