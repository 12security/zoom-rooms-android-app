.class Lus/zoom/zrc/settings/SettingRoomFragment$10;
.super Ljava/lang/Object;
.source "SettingRoomFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/settings/SettingRoomFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/settings/SettingRoomFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/settings/SettingRoomFragment;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lus/zoom/zrc/settings/SettingRoomFragment$10;->this$0:Lus/zoom/zrc/settings/SettingRoomFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 201
    iget-object p1, p0, Lus/zoom/zrc/settings/SettingRoomFragment$10;->this$0:Lus/zoom/zrc/settings/SettingRoomFragment;

    invoke-virtual {p1}, Lus/zoom/zrc/settings/SettingRoomFragment;->onBack()V

    return-void
.end method
