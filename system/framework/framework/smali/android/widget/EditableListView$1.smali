.class Landroid/widget/EditableListView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "EditableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/EditableListView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/EditableListView;


# direct methods
.method constructor <init>(Landroid/widget/EditableListView;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Landroid/widget/EditableListView$1;->this$0:Landroid/widget/EditableListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x4296

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x4248

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 59
    iget-object v1, p0, Landroid/widget/EditableListView$1;->this$0:Landroid/widget/EditableListView;

    invoke-static {v1}, Landroid/widget/EditableListView;->access$000(Landroid/widget/EditableListView;)Landroid/widget/EditableListView$EditableListData;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditableListView$EditableListData;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    iget-object v1, p0, Landroid/widget/EditableListView$1;->this$0:Landroid/widget/EditableListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditableListView;->pointToPosition(II)I

    move-result v0

    .line 61
    .local v0, motionPosition:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v1, v4

    .line 71
    .end local v0           #motionPosition:I
    :goto_0
    return v1

    .line 64
    .restart local v0       #motionPosition:I
    :cond_0
    iget-object v1, p0, Landroid/widget/EditableListView$1;->this$0:Landroid/widget/EditableListView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditableListView;->enterEditMode(Ljava/lang/Integer;)V

    .line 69
    .end local v0           #motionPosition:I
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 66
    :cond_1
    iget-object v1, p0, Landroid/widget/EditableListView$1;->this$0:Landroid/widget/EditableListView;

    invoke-virtual {v1}, Landroid/widget/EditableListView;->exitEditMode()V

    goto :goto_1

    :cond_2
    move v1, v4

    .line 71
    goto :goto_0
.end method
