.class public Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;
.super Ljava/lang/Object;
.source "ZRCAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/base/app/ZRCAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    new-instance v0, Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-direct {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    return-void
.end method


# virtual methods
.method public create()Lus/zoom/zrc/base/app/ZRCAlertDialog;
    .locals 3

    .line 560
    new-instance v0, Lus/zoom/zrc/base/app/ZRCAlertDialog;

    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lus/zoom/zrc/base/app/ZRCAlertDialog;-><init>(Lus/zoom/zrc/base/app/ZRCAlertHolder;I)V

    .line 561
    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v1, v0}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setDialog(Lus/zoom/zrc/base/app/ZRCAlertDialog;)V

    .line 562
    iget-object v1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->isCancelable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->setCancelable(Z)V

    return-object v0
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 1

    .line 691
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getDialog()Lus/zoom/zrc/base/app/ZRCAlertDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    return-object p1
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;
    .locals 2

    .line 703
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setType(I)V

    .line 704
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setAdater(Landroid/widget/ListAdapter;)V

    .line 705
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setListListener(Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public setCancelable(Z)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;
    .locals 1

    .line 673
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setCancelable(Z)V

    return-object p0
.end method

.method public setIcon(I)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;
    .locals 1

    .line 616
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setIcon(I)V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;
    .locals 1

    .line 611
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public setListDividerHeight(I)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;
    .locals 1

    .line 606
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setListDividerHeight(I)V

    return-object p0
.end method

.method public setMessage(I)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;
    .locals 2

    if-lez p1, :cond_0

    .line 583
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setType(I)V

    .line 584
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setMsg(Ljava/lang/String;)V

    goto :goto_0

    .line 586
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setMsg(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;
    .locals 1

    .line 567
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setMsg(Ljava/lang/String;)V

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;
    .locals 0

    .line 722
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setType(I)V

    .line 723
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setMultiChoice(Z)V

    .line 724
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {p1, p3}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setListListener(Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;
    .locals 2

    .line 627
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setmNegativeButtonText(Ljava/lang/String;)V

    .line 628
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setNegativeButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;
    .locals 1

    .line 648
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setmNegativeButtonText(Ljava/lang/String;)V

    .line 649
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setNegativeButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;
    .locals 2

    .line 634
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setmNeutralButtonText(Ljava/lang/String;)V

    .line 635
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setNeutralButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;
    .locals 1

    .line 655
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setmNeutralButtonText(Ljava/lang/String;)V

    .line 656
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setNeutralButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;
    .locals 1

    .line 668
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;
    .locals 1

    .line 641
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0, p2}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setPositiveButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 642
    iget-object p2, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {p2}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setmPositiveButtonText(Ljava/lang/String;)V

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;
    .locals 1

    .line 662
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0, p2}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setPositiveButtonListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 663
    iget-object p2, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {p2, p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setmPositiveButtonText(Ljava/lang/String;)V

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;
    .locals 1

    .line 730
    iget-object p2, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setSingleChoice(Z)V

    .line 731
    iget-object p2, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setType(I)V

    .line 732
    iget-object p2, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {p2, p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setAdater(Landroid/widget/ListAdapter;)V

    .line 733
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {p1, p3}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setListListener(Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;
    .locals 2

    .line 711
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setType(I)V

    .line 712
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setSingleChoice(Z)V

    .line 713
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setMultiChoice(Z)V

    .line 714
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setItems([Ljava/lang/CharSequence;)V

    .line 715
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setCheckIndex(I)V

    .line 716
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {p1, p3}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setListListener(Landroid/content/DialogInterface$OnClickListener;)V

    return-object p0
.end method

.method public setTheme(I)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;
    .locals 1

    .line 572
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setTheme(I)V

    return-object p0
.end method

.method public setTitle(I)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;
    .locals 2

    if-lez p1, :cond_0

    .line 598
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 600
    :cond_0
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setTitle(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;
    .locals 1

    .line 592
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setTitle(Ljava/lang/String;)V

    return-object p0
.end method

.method public setTitleView(Landroid/view/View;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;
    .locals 1

    .line 577
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setTitleView(Landroid/view/View;)V

    return-object p0
.end method

.method public setVerticalStyle(Z)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;
    .locals 1

    .line 621
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setVerticalStyle(Z)V

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 678
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setmView(Landroid/view/View;)V

    .line 679
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setmViewSpacingSpecified(Z)V

    return-object p0
.end method

.method public setView(Landroid/view/View;Z)Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;
    .locals 1

    .line 684
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0, p1}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setmView(Landroid/view/View;)V

    .line 685
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setmViewSpacingSpecified(Z)V

    .line 686
    iget-object p1, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {p1, p2}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->setHideBottomGap(Z)V

    return-object p0
.end method

.method public show()V
    .locals 1

    .line 695
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getDialog()Lus/zoom/zrc/base/app/ZRCAlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 696
    invoke-virtual {p0}, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->create()Lus/zoom/zrc/base/app/ZRCAlertDialog;

    .line 698
    :cond_0
    iget-object v0, p0, Lus/zoom/zrc/base/app/ZRCAlertDialog$Builder;->holder:Lus/zoom/zrc/base/app/ZRCAlertHolder;

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertHolder;->getDialog()Lus/zoom/zrc/base/app/ZRCAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lus/zoom/zrc/base/app/ZRCAlertDialog;->show()V

    return-void
.end method
