.class public Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam;
.super Ljava/lang/Object;
.source "ZMDialogFragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/zoom/androidlib/app/ZMDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZMDialogParam"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public intParam:I

.field public longParam:J

.field public strParam:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 508
    new-instance v0, Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam$1;

    invoke-direct {v0}, Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam$1;-><init>()V

    sput-object v0, Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-string v0, "{[(void)]}"

    const/high16 v1, -0x80000000

    const-wide/high16 v2, -0x8000000000000000L

    .line 522
    invoke-direct {p0, v1, v2, v3, v0}, Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam;-><init>(IJLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const-string v0, "{[(void)]}"

    const-wide/high16 v1, -0x8000000000000000L

    .line 526
    invoke-direct {p0, p1, v1, v2, v0}, Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam;-><init>(IJLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    const-string v0, "{[(void)]}"

    .line 530
    invoke-direct {p0, p1, p2, p3, v0}, Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam;-><init>(IJLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;)V
    .locals 0

    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    iput p1, p0, Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam;->intParam:I

    .line 535
    iput-wide p2, p0, Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam;->longParam:J

    .line 536
    iput-object p4, p0, Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam;->strParam:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 541
    instance-of v0, p1, Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 542
    iget v0, p0, Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam;->intParam:I

    check-cast p1, Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam;

    iget v2, p1, Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam;->intParam:I

    if-ne v0, v2, :cond_0

    iget-wide v2, p0, Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam;->longParam:J

    iget-wide v4, p1, Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam;->longParam:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam;->strParam:Ljava/lang/String;

    iget-object p1, p1, Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam;->strParam:Ljava/lang/String;

    .line 544
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 556
    iget p2, p0, Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam;->intParam:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    iget-wide v0, p0, Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam;->longParam:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 558
    iget-object p2, p0, Lus/zoom/androidlib/app/ZMDialogFragment$ZMDialogParam;->strParam:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
