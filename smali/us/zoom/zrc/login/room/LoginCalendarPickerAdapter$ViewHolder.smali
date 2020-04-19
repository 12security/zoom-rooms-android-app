.class Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LoginCalendarPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field private centerNameView:Landroid/widget/TextView;

.field private emailView:Landroid/widget/TextView;

.field private nameView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 239
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 240
    sget v0, Lus/zoom/zrcbox/R$id;->calendar_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    .line 241
    sget v0, Lus/zoom/zrcbox/R$id;->calendar_email:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;->emailView:Landroid/widget/TextView;

    .line 242
    sget v0, Lus/zoom/zrcbox/R$id;->calendar_center_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;->centerNameView:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 232
    iget-object p0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;->centerNameView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 232
    iget-object p0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 232
    iget-object p0, p0, Lus/zoom/zrc/login/room/LoginCalendarPickerAdapter$ViewHolder;->emailView:Landroid/widget/TextView;

    return-object p0
.end method
