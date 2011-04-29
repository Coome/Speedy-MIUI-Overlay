.class public abstract Landroid/widget/CompoundButton;
.super Landroid/widget/Button;
.source "CompoundButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CompoundButton$1;,
        Landroid/widget/CompoundButton$SavedState;,
        Landroid/widget/CompoundButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mBroadcasting:Z

.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonResource:I

.field private mChecked:Z

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/widget/CompoundButton;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    sget-object v3, Lcom/android/internal/R$styleable;->CompoundButton:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 75
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {p0, v2}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    :cond_0
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 81
    .local v1, checked:Z
    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/widget/Button;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 215
    .local v0, populated:Z
    if-nez v0, :cond_0

    .line 216
    const/4 v1, 0x0

    .line 217
    .local v1, resourceId:I
    iget-boolean v3, p0, Landroid/widget/CompoundButton;->mChecked:Z

    if-eqz v3, :cond_1

    .line 218
    const v1, 0x1040358

    .line 222
    :goto_0
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, state:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    iget-boolean v3, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 227
    .end local v1           #resourceId:I
    .end local v2           #state:Ljava/lang/String;
    :cond_0
    return v0

    .line 220
    .restart local v1       #resourceId:I
    :cond_1
    const v1, 0x1040359

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 276
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 278
    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v0

    .line 282
    .local v0, myDrawableState:[I
    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 284
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    .line 286
    .end local v0           #myDrawableState:[I
    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 105
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .parameter "extraSpace"

    .prologue
    .line 267
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 268
    .local v0, drawableState:[I
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    sget-object v1, Landroid/widget/CompoundButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/CompoundButton;->mergeDrawableStates([I[I)[I

    .line 271
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 232
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 234
    iget-object v1, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 235
    .local v1, buttonDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 236
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getGravity()I

    move-result v6

    and-int/lit8 v4, v6, 0x70

    .line 237
    .local v4, verticalGravity:I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 239
    .local v3, height:I
    const/4 v5, 0x0

    .line 241
    .local v5, y:I
    sparse-switch v4, :sswitch_data_0

    .line 250
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 251
    .local v2, bw:I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 252
    .local v0, bgPadding:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 253
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 255
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 256
    const/4 v6, 0x0

    add-int v7, v5, v3

    invoke-virtual {v1, v6, v5, v2, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 257
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingLeft()I

    move-result v6

    if-ge v6, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingRight()I

    move-result v6

    iget v7, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    if-lt v6, v2, :cond_1

    .line 258
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result v6

    sub-int/2addr v6, v2

    iget v7, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 260
    :cond_1
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 261
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 263
    .end local v0           #bgPadding:Landroid/graphics/Rect;
    .end local v2           #bw:I
    .end local v3           #height:I
    .end local v4           #verticalGravity:I
    .end local v5           #y:I
    :cond_2
    return-void

    .line 243
    .restart local v3       #height:I
    .restart local v4       #verticalGravity:I
    .restart local v5       #y:I
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result v6

    sub-int v5, v6, v3

    .line 244
    goto :goto_0

    .line 246
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result v6

    sub-int/2addr v6, v3

    div-int/lit8 v5, v6, 0x2

    goto :goto_0

    .line 241
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 350
    move-object v0, p1

    check-cast v0, Landroid/widget/CompoundButton$SavedState;

    move-object v1, v0

    .line 352
    .local v1, ss:Landroid/widget/CompoundButton$SavedState;
    invoke-virtual {v1}, Landroid/widget/CompoundButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 353
    iget-boolean v2, v1, Landroid/widget/CompoundButton$SavedState;->checked:Z

    invoke-virtual {p0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 354
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    .line 355
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 339
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/CompoundButton;->setFreezesText(Z)V

    .line 340
    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 342
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/CompoundButton$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/CompoundButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 344
    .local v0, ss:Landroid/widget/CompoundButton$SavedState;
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/widget/CompoundButton$SavedState;->checked:Z

    .line 345
    return-object v0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->toggle()V

    .line 100
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    return v0
.end method

.method public setButtonDrawable(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 176
    if-eqz p1, :cond_0

    iget v1, p0, Landroid/widget/CompoundButton;->mButtonResource:I

    if-ne p1, v1, :cond_0

    .line 187
    :goto_0
    return-void

    .line 180
    :cond_0
    iput p1, p0, Landroid/widget/CompoundButton;->mButtonResource:I

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget v1, p0, Landroid/widget/CompoundButton;->mButtonResource:I

    if-eqz v1, :cond_1

    .line 184
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/widget/CompoundButton;->mButtonResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 186
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "d"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 195
    if-eqz p1, :cond_1

    .line 196
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 198
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 201
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 202
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 203
    iput-object p1, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 204
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 205
    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setMinHeight(I)V

    .line 208
    :cond_1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->refreshDrawableState()V

    .line 209
    return-void

    :cond_2
    move v0, v1

    .line 202
    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 114
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 115
    iput-boolean p1, p0, Landroid/widget/CompoundButton;->mChecked:Z

    .line 116
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->refreshDrawableState()V

    .line 119
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mBroadcasting:Z

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/CompoundButton;->mBroadcasting:Z

    .line 124
    iget-object v0, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 127
    :cond_2
    iget-object v0, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-boolean v1, p0, Landroid/widget/CompoundButton;->mChecked:Z

    invoke-interface {v0, p0, v1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 131
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/CompoundButton;->mBroadcasting:Z

    goto :goto_0
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 142
    iput-object p1, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 143
    return-void
.end method

.method setOnCheckedChangeWidgetListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 153
    iput-object p1, p0, Landroid/widget/CompoundButton;->mOnCheckedChangeWidgetListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 154
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/widget/CompoundButton;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 88
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 290
    invoke-super {p0, p1}, Landroid/widget/Button;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/CompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
