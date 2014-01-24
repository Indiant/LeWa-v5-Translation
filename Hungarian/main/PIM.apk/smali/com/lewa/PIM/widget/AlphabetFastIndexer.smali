.class public Lcom/lewa/PIM/widget/AlphabetFastIndexer;
.super Landroid/view/View;
.source "AlphabetFastIndexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lewa/PIM/widget/AlphabetFastIndexer$OnTouchingLetterChangedListener;
    }
.end annotation


# static fields
.field public static b:[Ljava/lang/String;

.field public static showBkg:Z


# instance fields
.field private choose:I

.field private mAlphabetBg:Landroid/graphics/drawable/Drawable;

.field private mChooseColor:I

.field private mHasActionBar:Z

.field private mHasFav:Z

.field private mLetters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPaddingBottom:I

.field private mTextsize:I

.field onTouchingLetterChangedListener:Lcom/lewa/PIM/widget/AlphabetFastIndexer$OnTouchingLetterChangedListener;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 23
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u2605"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "#"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "A"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "B"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "C"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "D"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Z"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->b:[Ljava/lang/String;

    .line 132
    sput-boolean v3, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->showBkg:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 26
    iput v1, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->paint:Landroid/graphics/Paint;

    .line 31
    iput-boolean v2, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mHasFav:Z

    .line 32
    iput-boolean v2, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mHasActionBar:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mLetters:Ljava/util/ArrayList;

    .line 51
    invoke-direct {p0, p1}, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->init(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p0, v1}, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->setHasFavorite(Z)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput v1, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->paint:Landroid/graphics/Paint;

    .line 31
    iput-boolean v2, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mHasFav:Z

    .line 32
    iput-boolean v2, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mHasActionBar:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mLetters:Ljava/util/ArrayList;

    .line 45
    invoke-direct {p0, p1}, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->init(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p0, v1}, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->setHasFavorite(Z)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput v1, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->paint:Landroid/graphics/Paint;

    .line 31
    iput-boolean v2, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mHasFav:Z

    .line 32
    iput-boolean v2, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mHasActionBar:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mLetters:Ljava/util/ArrayList;

    .line 39
    invoke-direct {p0, p1}, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->init(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0, v1}, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->setHasFavorite(Z)V

    .line 41
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mChooseColor:I

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mTextsize:I

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mPaddingBottom:I

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mAlphabetBg:Landroid/graphics/drawable/Drawable;

    .line 60
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 137
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 138
    .local v2, y:F
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v2, v3

    iget-object v4, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 140
    .local v1, c:I
    packed-switch v0, :pswitch_data_0

    .line 163
    :goto_0
    return v5

    .line 142
    :pswitch_0
    sput-boolean v5, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->showBkg:Z

    .line 155
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->drawThumb(I)V

    goto :goto_0

    .line 158
    :pswitch_2
    const/4 v3, 0x0

    sput-boolean v3, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->showBkg:Z

    .line 160
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public drawThumb(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->onTouchingLetterChangedListener:Lcom/lewa/PIM/widget/AlphabetFastIndexer$OnTouchingLetterChangedListener;

    .line 173
    .local v0, listener:Lcom/lewa/PIM/widget/AlphabetFastIndexer$OnTouchingLetterChangedListener;
    iget v1, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    if-eq v1, p1, :cond_1

    if-eqz v0, :cond_1

    .line 174
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 175
    if-eqz v0, :cond_0

    .line 176
    iget-object v1, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/lewa/PIM/widget/AlphabetFastIndexer$OnTouchingLetterChangedListener;->onTouchingLetterChanged(Ljava/lang/String;)V

    .line 178
    :cond_0
    iput p1, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    .line 179
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 182
    :cond_1
    return-void
.end method

.method public drawThumb(Ljava/lang/String;)V
    .locals 3
    .parameter "letter"

    .prologue
    .line 185
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mLetters:Ljava/util/ArrayList;

    iget v2, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 187
    .local v0, i:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 188
    :cond_0
    iget v1, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    if-eq v1, v0, :cond_1

    .line 189
    iput v0, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    .line 190
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 193
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 94
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 97
    .local v2, height:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 98
    .local v9, width:I
    sget-boolean v12, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->showBkg:Z

    if-eqz v12, :cond_3

    .line 99
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mAlphabetBg:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_0

    .line 100
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mAlphabetBg:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v9, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 101
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mAlphabetBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 106
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 107
    .local v8, size:I
    div-int v7, v2, v8

    .line 108
    .local v7, singleHeight:I
    mul-int v12, v7, v8

    sub-int v6, v2, v12

    .line 109
    .local v6, remainder:I
    div-int/lit8 v5, v6, 0x2

    .line 110
    .local v5, paddingTop:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v8, :cond_4

    .line 111
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->paint:Landroid/graphics/Paint;

    const v13, -0x777778

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->paint:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 113
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->paint:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mTextsize:I

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 115
    if-nez v3, :cond_1

    .line 116
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 117
    .local v1, fontMetrics:Landroid/graphics/Paint$FontMetrics;
    int-to-float v12, v5

    int-to-float v13, v7

    iget v14, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v15, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v14, v15

    sub-float/2addr v13, v14

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    float-to-int v5, v12

    .line 119
    .end local v1           #fontMetrics:Landroid/graphics/Paint$FontMetrics;
    :cond_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    if-ne v3, v12, :cond_2

    .line 120
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mChooseColor:I

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->paint:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 123
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 124
    .local v4, letterStr:Ljava/lang/String;
    div-int/lit8 v12, v9, 0x2

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    sub-float v10, v12, v13

    .line 125
    .local v10, xPos:F
    mul-int v12, v7, v3

    add-int/2addr v12, v7

    add-int/2addr v12, v5

    int-to-float v11, v12

    .line 126
    .local v11, yPos:F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->reset()V

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 104
    .end local v3           #i:I
    .end local v4           #letterStr:Ljava/lang/String;
    .end local v5           #paddingTop:I
    .end local v6           #remainder:I
    .end local v7           #singleHeight:I
    .end local v8           #size:I
    .end local v10           #xPos:F
    .end local v11           #yPos:F
    :cond_3
    const-string v12, "#00000000"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_0

    .line 130
    .restart local v3       #i:I
    .restart local v5       #paddingTop:I
    .restart local v6       #remainder:I
    .restart local v7       #singleHeight:I
    .restart local v8       #size:I
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mHasActionBar:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mPaddingBottom:I

    sub-int/2addr p2, v0

    .end local p2
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 90
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setHasActionBar(Z)V
    .locals 1
    .parameter "hasActionBar"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mHasActionBar:Z

    if-eq v0, p1, :cond_0

    .line 81
    iput-boolean p1, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mHasActionBar:Z

    .line 83
    :cond_0
    return-void
.end method

.method public setHasFavorite(Z)V
    .locals 6
    .parameter "hasFav"

    .prologue
    .line 63
    iget-boolean v4, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mHasFav:Z

    if-eq v4, p1, :cond_4

    .line 64
    iput-boolean p1, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mHasFav:Z

    .line 65
    iget-object v4, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 66
    sget-object v0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->b:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 67
    .local v3, letter:Ljava/lang/String;
    if-nez p1, :cond_0

    const-string v4, "\u2605"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_0
    iget-object v4, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 71
    .end local v3           #letter:Ljava/lang/String;
    :cond_1
    iget v4, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    if-eqz v4, :cond_2

    if-eqz p1, :cond_5

    iget v4, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    add-int/lit8 v4, v4, 0x1

    :goto_2
    iput v4, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    .line 72
    :cond_2
    iget v4, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    if-gez v4, :cond_6

    const/4 v4, 0x0

    iput v4, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    .line 75
    :cond_3
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 77
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :cond_4
    return-void

    .line 71
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    :cond_5
    iget v4, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 73
    :cond_6
    iget v4, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    iget-object v5, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_3

    iget-object v4, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->mLetters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->choose:I

    goto :goto_3
.end method

.method public setOnTouchingLetterChangedListener(Lcom/lewa/PIM/widget/AlphabetFastIndexer$OnTouchingLetterChangedListener;)V
    .locals 0
    .parameter "onTouchingLetterChangedListener"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/lewa/PIM/widget/AlphabetFastIndexer;->onTouchingLetterChangedListener:Lcom/lewa/PIM/widget/AlphabetFastIndexer$OnTouchingLetterChangedListener;

    .line 202
    return-void
.end method
