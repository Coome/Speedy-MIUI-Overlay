.class Landroid/widget/EditableListView$2;
.super Ljava/lang/Object;
.source "EditableListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/EditableListView;->enterEditMode(Ljava/lang/Integer;)V
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
    .line 196
    iput-object p1, p0, Landroid/widget/EditableListView$2;->this$0:Landroid/widget/EditableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Landroid/widget/EditableListView$2;->this$0:Landroid/widget/EditableListView;

    invoke-static {v3, p3}, Landroid/widget/EditableListView;->access$500(Landroid/widget/EditableListView;I)I

    move-result v1

    .line 200
    .local v1, innerPosition:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 201
    iget-object v3, p0, Landroid/widget/EditableListView$2;->this$0:Landroid/widget/EditableListView;

    invoke-static {v3}, Landroid/widget/EditableListView;->access$000(Landroid/widget/EditableListView;)Landroid/widget/EditableListView$EditableListData;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/widget/EditableListView$EditableListData;->access$600(Landroid/widget/EditableListView$EditableListData;I)Ljava/lang/Boolean;

    move-result-object v2

    .line 202
    .local v2, isChecked:Ljava/lang/Boolean;
    if-eqz v2, :cond_0

    .line 203
    const v3, 0x1020001

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 204
    .local v0, checkBox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 209
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    .end local v2           #isChecked:Ljava/lang/Boolean;
    :cond_0
    return-void
.end method
