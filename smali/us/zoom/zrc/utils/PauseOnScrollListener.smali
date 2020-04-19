.class public Lus/zoom/zrc/utils/PauseOnScrollListener;
.super Ljava/lang/Object;
.source "PauseOnScrollListener.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private imageLoader:Lus/zoom/zrc/utils/AvatarLoader;

.field private final pauseOnFling:Z

.field private final pauseOnScroll:Z


# direct methods
.method public constructor <init>(Lus/zoom/zrc/utils/AvatarLoader;ZZ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lus/zoom/zrc/utils/PauseOnScrollListener;->imageLoader:Lus/zoom/zrc/utils/AvatarLoader;

    .line 17
    iput-boolean p2, p0, Lus/zoom/zrc/utils/PauseOnScrollListener;->pauseOnScroll:Z

    .line 18
    iput-boolean p3, p0, Lus/zoom/zrc/utils/PauseOnScrollListener;->pauseOnFling:Z

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 28
    :pswitch_0
    iget-boolean p1, p0, Lus/zoom/zrc/utils/PauseOnScrollListener;->pauseOnFling:Z

    if-eqz p1, :cond_0

    .line 29
    iget-object p1, p0, Lus/zoom/zrc/utils/PauseOnScrollListener;->imageLoader:Lus/zoom/zrc/utils/AvatarLoader;

    invoke-virtual {p1}, Lus/zoom/zrc/utils/AvatarLoader;->pause()V

    goto :goto_0

    .line 33
    :pswitch_1
    iget-boolean p1, p0, Lus/zoom/zrc/utils/PauseOnScrollListener;->pauseOnScroll:Z

    if-eqz p1, :cond_0

    .line 34
    iget-object p1, p0, Lus/zoom/zrc/utils/PauseOnScrollListener;->imageLoader:Lus/zoom/zrc/utils/AvatarLoader;

    invoke-virtual {p1}, Lus/zoom/zrc/utils/AvatarLoader;->pause()V

    goto :goto_0

    .line 25
    :pswitch_2
    iget-object p1, p0, Lus/zoom/zrc/utils/PauseOnScrollListener;->imageLoader:Lus/zoom/zrc/utils/AvatarLoader;

    invoke-virtual {p1}, Lus/zoom/zrc/utils/AvatarLoader;->resume()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
