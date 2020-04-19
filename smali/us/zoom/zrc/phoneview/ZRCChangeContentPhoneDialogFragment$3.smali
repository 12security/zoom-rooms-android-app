.class Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$3;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "ZRCChangeContentPhoneDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;


# direct methods
.method constructor <init>(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$3;->this$0:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 311
    iget-object p1, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$3;->this$0:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->access$100(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 313
    iget-object p1, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$3;->this$0:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->access$500(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 315
    iget-object p1, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$3;->this$0:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->access$100(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 303
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;->onPageScrolled(IFI)V

    .line 304
    iget-object p1, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$3;->this$0:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->access$300(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 305
    iget-object p1, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$3;->this$0:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->access$400(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;I)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 321
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 322
    iget-object p1, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$3;->this$0:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;

    invoke-static {p1}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->access$300(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 323
    iget-object p1, p0, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment$3;->this$0:Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;->access$400(Lus/zoom/zrc/phoneview/ZRCChangeContentPhoneDialogFragment;I)V

    :cond_0
    return-void
.end method
