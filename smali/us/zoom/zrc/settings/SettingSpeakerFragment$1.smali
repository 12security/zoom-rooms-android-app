.class Lus/zoom/zrc/settings/SettingSpeakerFragment$1;
.super Ljava/lang/Object;
.source "SettingSpeakerFragment.java"

# interfaces
.implements Lus/zoom/zrc/view/helper/ZRCSpeakerVolumeHelper$OnProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingSpeakerFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/SettingSpeakerFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/SettingSpeakerFragment;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment$1;->this$0:Lus/zoom/zrc/settings/SettingSpeakerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(I)V
    .locals 6

    .line 105
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment$1;->this$0:Lus/zoom/zrc/settings/SettingSpeakerFragment;

    invoke-virtual {v0}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment$1;->this$0:Lus/zoom/zrc/settings/SettingSpeakerFragment;

    invoke-static {v0}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->access$000(Lus/zoom/zrc/settings/SettingSpeakerFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lus/zoom/zrc/settings/SettingSpeakerFragment$1;->this$0:Lus/zoom/zrc/settings/SettingSpeakerFragment;

    sget v2, Lus/zoom/zrcbox/R$string;->zrc_setting_volume:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lus/zoom/zrc/settings/SettingSpeakerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
