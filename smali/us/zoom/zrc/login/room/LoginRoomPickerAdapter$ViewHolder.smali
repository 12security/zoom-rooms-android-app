.class Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LoginRoomPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/zrc/login/room/LoginRoomPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field private calendarName:Landroid/widget/TextView;

.field private roomName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 145
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 146
    sget v0, Lus/zoom/zrcbox/R$id;->room_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$ViewHolder;->roomName:Landroid/widget/TextView;

    .line 147
    sget v0, Lus/zoom/zrcbox/R$id;->calendar_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$ViewHolder;->calendarName:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$1;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 139
    iget-object p0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$ViewHolder;->roomName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 139
    iget-object p0, p0, Lus/zoom/zrc/login/room/LoginRoomPickerAdapter$ViewHolder;->calendarName:Landroid/widget/TextView;

    return-object p0
.end method
