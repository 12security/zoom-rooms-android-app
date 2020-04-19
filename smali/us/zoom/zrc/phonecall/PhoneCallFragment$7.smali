.class Lus/zoom/zrc/phonecall/PhoneCallFragment$7;
.super Ljava/lang/Object;
.source "PhoneCallFragment.java"

# interfaces
.implements Lus/zoom/zrc/base/widget/keypad/KeypadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phonecall/PhoneCallFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phonecall/PhoneCallFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phonecall/PhoneCallFragment;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment$7;->this$0:Lus/zoom/zrc/phonecall/PhoneCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyClicked(Ljava/lang/String;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lus/zoom/zrc/phonecall/PhoneCallFragment$7;->this$0:Lus/zoom/zrc/phonecall/PhoneCallFragment;

    invoke-static {v0, p1}, Lus/zoom/zrc/phonecall/PhoneCallFragment;->access$500(Lus/zoom/zrc/phonecall/PhoneCallFragment;Ljava/lang/String;)V

    return-void
.end method
